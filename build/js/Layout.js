/* Layout()
 * ========
 * Implementa el diseño AdminLTE.
 * Corrige la altura del diseño en caso de que falle la altura mínima.
 *
 * @usage se activa automáticamente al cargar la ventana.
 * Configure cualquier opción pasando data-option="value"
 * a la etiqueta del cuerpo.
 */
+function ($) {
  'use strict'

  var DataKey = 'lte.layout'

  var Default = {
    slimscroll : true,
    resetHeight: true
  }

  var Selector = {
    wrapper       : '.wrapper',
    contentWrapper: '.content-wrapper',
    layoutBoxed   : '.layout-boxed',
    mainFooter    : '.main-footer',
    mainHeader    : '.main-header',
    sidebar       : '.sidebar',
    controlSidebar: '.control-sidebar',
    fixed         : '.fixed',
    sidebarMenu   : '.sidebar-menu',
    logo          : '.main-header .logo'
  }

  var ClassName = {
    fixed         : 'fixed',
    holdTransition: 'hold-transition'
  }

  var Layout = function (options) {
    this.options      = options
    this.bindedResize = false
    this.activate()
  }

  Layout.prototype.activate = function () {
    this.fix()
    this.fixSidebar()

    $('body').removeClass(ClassName.holdTransition)

    if (this.options.resetHeight) {
      $('body, html, ' + Selector.wrapper).css({
        'height'    : 'auto',
        'min-height': '100%'
      })
    }

    if (!this.bindedResize) {
      $(window).resize(function () {
        this.fix()
        this.fixSidebar()

        $(Selector.logo + ', ' + Selector.sidebar).one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function () {
          this.fix()
          this.fixSidebar()
        }.bind(this))
      }.bind(this))

      this.bindedResize = true
    }

    $(Selector.sidebarMenu).on('expanded.tree', function () {
      this.fix()
      this.fixSidebar()
    }.bind(this))

    $(Selector.sidebarMenu).on('collapsed.tree', function () {
      this.fix()
      this.fixSidebar()
    }.bind(this))
  }

  Layout.prototype.fix = function () {
    // Eliminar el desbordamiento de .wrapper si existe un cuadro de diseño
    $(Selector.layoutBoxed + ' > ' + Selector.wrapper).css('overflow', 'hidden')

    // Obtenga la altura de la ventana y la altura de la envoltura
    var footerHeight  = $(Selector.mainFooter).outerHeight() || 0
    var neg           = $(Selector.mainHeader).outerHeight() + footerHeight
    var windowHeight  = $(window).height()
    var sidebarHeight = $(Selector.sidebar).height() || 0

    // Establezca la altura mínima del contenido y la barra lateral en función de
    // la altura del documento.
    if ($('body').hasClass(ClassName.fixed)) {
      $(Selector.contentWrapper).css('min-height', windowHeight - footerHeight)
    } else {
      var postSetHeight

      if (windowHeight >= sidebarHeight) {
        $(Selector.contentWrapper).css('min-height', windowHeight - neg)
        postSetHeight = windowHeight - neg
      } else {
        $(Selector.contentWrapper).css('min-height', sidebarHeight)
        postSetHeight = sidebarHeight
      }

      // Arreglo para la altura de la barra lateral de control.
      var $controlSidebar = $(Selector.controlSidebar)
      if (typeof $controlSidebar !== 'undefined') {
        if ($controlSidebar.height() > postSetHeight)
          $(Selector.contentWrapper).css('min-height', $controlSidebar.height())
      }
    }
  }

  Layout.prototype.fixSidebar = function () {
    // Asegúrese de que la etiqueta del cuerpo tenga la clase .fixed
    if (!$('body').hasClass(ClassName.fixed)) {
      if (typeof $.fn.slimScroll !== 'undefined') {
        $(Selector.sidebar).slimScroll({ destroy: true }).height('auto')
      }
      return
    }

    // Enable slimscroll for fixed layout
    if (this.options.slimscroll) {
      if (typeof $.fn.slimScroll !== 'undefined') {
        // Destroy if it exists
        // $(Selector.sidebar).slimScroll({ destroy: true }).height('auto')

        // Add slimscroll
        $(Selector.sidebar).slimScroll({
          height: ($(window).height() - $(Selector.mainHeader).height()) + 'px',
          color : 'rgba(0,0,0,0.2)',
          size  : '3px'
        })
      }
    }
  }

  // Definición de complemento
  // =================
  function Plugin(option) {
    return this.each(function () {
      var $this = $(this)
      var data  = $this.data(DataKey)

      if (!data) {
        var options = $.extend({}, Default, $this.data(), typeof option === 'object' && option)
        $this.data(DataKey, (data = new Layout(options)))
      }

      if (typeof option === 'string') {
        if (typeof data[option] === 'undefined') {
          throw new Error('No method named ' + option)
        }
        data[option]()
      }
    })
  }

  var old = $.fn.layout

  $.fn.layout            = Plugin
  $.fn.layout.Constuctor = Layout

  // Sin modo de conflicto
  // ================
  $.fn.layout.noConflict = function () {
    $.fn.layout = old
    return this
  }

  // Layout DATA-API
  // ===============
  $(window).on('load', function () {
    Plugin.call($('body'))
  })
}(jQuery)
