/*
 * The AboutDialog has the sole purpose of displaying information about the
 * application. This includes the name, version, authors, website, and a short
 * comment.
    AUTHOR:     Mihai Cornel mhcrnl@gmail.com
    DATE:       26.03.2018
    COMPILE:    $valac --pkg gtk+-3.0 actionbar.vala
    RUN:        $./actionbar   
 
**/

using Gtk;
using Gdk;

public class Example : AboutDialog
{
    public Example()
    {
        //var logo = new Gdk.Pixbuf.from_file_at_size("./logo.png", 64, 64);
        //GdkPixbuf *example_logo = gdk_pixbuf_new_from_file("./logo.png", NULL);
        const string[] authors = {"Andrew Steele", "Bob Davies", "Chris Tomkins", "David Francis"};

        this.title = "AboutDialog";
        this.set_title("AboutDialog");
        this.set_name("Programmica");
        this.set_version("1.0");
        this.set_comments("Programming, system and network administration resources");
        this.set_website("https://valadoc.org/");
        this.set_website_label("Programmica Website");
        this.set_authors(authors);
        this.set_logo(logo);
        this.response.connect(on_response);
        this.destroy.connect(Gtk.main_quit);
    }

    private void on_response(Dialog dialog, int response)
    {
        Gtk.main_quit();
    }

    public static int main(string[] args)
    {
        Gtk.init(ref args);

        var dialog = new Example();
        dialog.show();

        Gtk.main();

        return 0;
    }
}
