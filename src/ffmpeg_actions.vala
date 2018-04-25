/* ffmpeg_actions.vala
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

using Posix;
namespace comandi {
		static void converti_file(string input, string output, Gtk.Button tasto) {
			Posix.system("ffmpeg " + "-i " + input +" " + output);
			tasto.set_label("FATTO");
		}
		static void converti_file_aac(string input, Gtk.Button tasto) {
			converti_file(input, input+".aac", tasto);
		}

}

