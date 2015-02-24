#!/bin/bash
# File Name: RemasterCC.sh
# Purpose: all-in-one Remaster control centre for antiX
# Author: anticapitalista antiX@operamail.com: 09 March 2012.
# Acknowledgements: Original script by KDulcimer of TinyMe. http://tinyme.mypclinuxos.com
#################################################################################################################################################

TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=remastercc.sh
ICONS=/usr/share/icons/antiX

export ControlCenter=$(cat <<End_of_Text
<window title="RemasterCC" icon="gnome-control-center" window-position="1">
<vbox> 
 <vbox>
  <frame>
	<hbox>
	  <vbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/preferences-desktop.png"</input>
		  <action>persist-makefs &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Set up live persistence"`"</label>
		  </text>
		</hbox>
		<hbox>
		  <button>
		  <input file>"$ICONS/palimpsest.png"</input>
		  <action>persist-config &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Configure live persistence"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"$ICONS/palimpsest.png"</input>
		  <action>persist-save &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Save root persistence"`"</label>
		  </text>
		</hbox>
                <hbox>
		  <button>
		  <input file>"$ICONS/preferences-desktop.png"</input>
		  <action>remaster-live  &</action>
		  </button>
		  <text use-markup="true" width-chars="25">
		  <label>"`gettext $"Remaster"`"</label>
		  </text>
		</hbox>
	  </vbox>
	</hbox>
    </frame>
  </vbox>

  <hbox>
	<button>
	<label>"Close"</label>
	<input file>"$ICONS/application-exit.png"</input>
	<action>EXIT:close</action>
	</button>
  </hbox>
</vbox>
</window>
End_of_Text
)

gtkdialog --program=ControlCenter
unset ControlCenter
