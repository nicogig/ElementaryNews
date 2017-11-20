public class ListView : Gtk.ScrolledWindow {
  public Gtk.Window window { get; construct; }

  public ListView(Gtk.Window window){

    // disable horizontal scrollbar
    this.set_policy(Gtk.PolicyType.NEVER, Gtk.PolicyType.AUTOMATIC);

    var list = new Gtk.ListBox();
    list.set_size_request(0,0);

    for (int i = 0; i < 5; i++)
    {
      var header1 = new Gtk.Label ("Lorem Ipsum");
      header1.margin_top = 12;
      header1.margin_start = 24;
      header1.margin_end = 24;
      header1.get_style_context().add_class(Granite.STYLE_CLASS_H1_LABEL);

      var header4 = new Gtk.Label ("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et arcu pretium ex fermentum rhoncus. Aenean tincidunt...");
      header4.margin_top = 6;
      header4.margin_left = 8;
      header4.margin_right = 8;
      header4.set_ellipsize (Pango.EllipsizeMode.END);
      header4.get_style_context().add_class(Granite.STYLE_CLASS_H4_LABEL);

      var card = new Gtk.Grid();
      card.orientation = Gtk.Orientation.VERTICAL;
      card.get_style_context().add_class(Granite.STYLE_CLASS_CARD);
      card.add(header1);
      card.add(header4);

      list.add(card);
    }

    this.add(list);
    Granite.Widgets.Utils.set_color_primary (window, { 241, 42, 89, 255 });

  }

}
