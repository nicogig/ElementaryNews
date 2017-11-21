public class ListView : Gtk.ScrolledWindow {
  public Gtk.Window window { get; construct; }

  public ListView(Gtk.Window window){

    // disable horizontal scrollbar
    this.set_policy(Gtk.PolicyType.NEVER, Gtk.PolicyType.AUTOMATIC);

    var list = new Gtk.ListBox();
    list.set_size_request(0,0);

    for (int i = 0; i < 10; i++)
    {
      var contentTitle = new Gtk.Label ("Lorem Ipsum");
      contentTitle.margin_top = 12;
      contentTitle.margin_start = 8;
      contentTitle.margin_end = 8;
      contentTitle.halign = Gtk.Align.START;
      contentTitle.set_ellipsize (Pango.EllipsizeMode.END);
      contentTitle.get_style_context().add_class(Granite.STYLE_CLASS_H1_LABEL);

      var contentDesc = new Gtk.Label ("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et arcu pretium ex fermentum rhoncus. Aenean tincidunt...");
      contentDesc.margin_top = 6;
      contentDesc.margin_start = 8;
      contentDesc.margin_end = 8;
      contentDesc.halign = Gtk.Align.START;
      contentDesc.set_ellipsize (Pango.EllipsizeMode.END);
      contentDesc.get_style_context().add_class(Granite.STYLE_CLASS_H4_LABEL);

      var card = new Gtk.Grid();
      card.orientation = Gtk.Orientation.VERTICAL;
      card.get_style_context().add_class(Granite.STYLE_CLASS_CARD);
      card.add(contentTitle);
      card.add(contentDesc);

      list.add(card);
    }

    var cardBackdrop = new Gtk.Grid();
    cardBackdrop.orientation = Gtk.Orientation.VERTICAL;
    cardBackdrop.get_style_context().add_class(Granite.STYLE_CLASS_CARD);
    cardBackdrop.add(list);

    var greetings = new Gtk.Label("News provided by Google News.");
    greetings.margin_top = 8;
    greetings.halign = Gtk.Align.CENTER;

    var testBase = new Gtk.Grid();
    testBase.hexpand = true;
    testBase.halign = Gtk.Align.CENTER;
    testBase.margin = 24;
    testBase.attach(cardBackdrop, 0, 0, 1, 1);
    testBase.attach(greetings, 0, 1, 1, 1);

    this.add(testBase);
    Granite.Widgets.Utils.set_color_primary (window, { 241, 42, 89, 255 });

  }

}
