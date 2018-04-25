/* main.vala
 *
 * Copyright (C) 2018 Carmine Zaccagnino
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

class EasyFFmpeg: Gtk.Window {
	Gtk.FileChooserButton input;
	Gtk.FileChooserButton output;
	public EasyFFmpeg() {
		this.destroy.connect(Gtk.main_quit);
		this.set_default_size(500, 500);

		var input_label = new Gtk.Label("File di Input");
		var output_label = new Gtk.Label("File di Output");

		var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);


		input = new Gtk.FileChooserButton("File di Input", Gtk.FileChooserAction.OPEN);

		// output = new Gtk.FileChooserButton("File di Output", Gtk.FileChooserAction.OPEN);

		// output.set_action(Gtk.FileChooserAction.SAVE);

		box.pack_start(input_label);
		box.pack_start(input);
		box.pack_start(output_label);
		// box.pack_start(output);

		var avvia = new Gtk.Button.with_label("Avvia Conversione");
		avvia.clicked.connect(avvia_conversione);
		box.pack_start(avvia);
		this.add(box);
		this.show_all();
	}
	private void avvia_conversione(Gtk.Button tasto) {
		stdout.printf("conversione %s\n", input.get_filename());
		comandi.converti_file_aac(input.get_filename(), tasto);
	}
}

int main (string[] args) {
	Gtk.init(ref args);
	var win = new EasyFFmpeg();
	win.destroy.connect(Gtk.main_quit);
	win.show_all();
	Gtk.main();

	return 0;
}
