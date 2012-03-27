(function() {
  var BatmanDemo;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  BatmanDemo = (function() {

    __extends(BatmanDemo, Batman.App);

    function BatmanDemo() {
      BatmanDemo.__super__.constructor.apply(this, arguments);
    }

    BatmanDemo.global(true);

    BatmanDemo.controller('bookmarks');

    BatmanDemo.model('bookmark');

    BatmanDemo.root('bookmarks#index');

    BatmanDemo.resources('bookmarks');

    return BatmanDemo;

  })();

}).call(this);
