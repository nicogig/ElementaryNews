public class News : Granite.Application {

  construct {
    application_id = "com.nicolagigante.news";
    flags = ApplicationFlags.FLAGS_NONE;
    program_name = "News";
    build_version = "0.1";
    app_icon = "applications-interfacedesign";
  }

  public override void activate() {
    var window = new Gtk.Window();
    var main_view = new ListView(window);

    var main_stack = new Gtk.Stack();
    main_stack.add_titled(main_view, "mainview", "Home");

    var stack_sidebar = new Gtk.StackSidebar();
    stack_sidebar.stack = main_stack;

    var paned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL);
    paned.add1(stack_sidebar);
    paned.add2(main_stack);

    window.add(paned);
    window.set_default_size(900, 600);
    window.set_size_request(750, 500);
    window.title = "News";
    window.show_all();

    add_window(window);
  }

  public static int main (string[] args) {
      var application = new News();
      return application.run(args);
  }

}
