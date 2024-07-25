1. Choose a folder to keep your TTS working files in. For example, "Documents\Tabletop Simulator Mods". Inside that folder, create a folder named "EU" and clone this repo into that folder.
2. VSCode is recommended. Install the extensions [Tabletop Simulator Editor](https://marketplace.visualstudio.com/items?itemName=sebaestschjin.tts-editor) and [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua). Restart VSCode.
3. Open TTS and from the Workshop menu, open the Europa Universalis: The Price of Power mod, and create a new save game. To hide the initial splash screen, you can open the console by pressing ` (next to 1) and typing in the command *lua Global.UI.Hide("Scenario")*
4. Open the working folder in VSCode, e.g. "Documents\Tabletop Simulator Mods". Use the extension to Get Scripts, or press Ctrl+Alt+L
5. There will be a .tts folder in your working folder containing the object data. You can edit scripts on those objects, and Save and Play (Ctrl+Alt+S) to push those changes to TTS
Lua scripts are stored in the EU folder.
6. Some objects will not have the script on them, but will reference an object in the EU folder or subfolders, such as .tts\Global.lua referencing EU\Global.lua. This means you can change the contents of EU\Global.lua, Save and Play, and those changes will be pushed to TTS, and you can commit to git directly. The syntax used is *require*, which basically means *copy the code from that file and paste it right here*.
7. For those scripts that are not in the EU folder, once you are happy with the changes, copy any changes to the respective EU files:
    - Rulebook.lua

The other files in EU can be edited and those files are alreay referenced in the .tts files. Some objects, such as containers, do not have their scripts in source control as of 2024-06-01.

8. Once all changes have been made to the TTS save and the .lua files, do a final test by loading the save game from the main menu of TTS, commit all changes to git, and pass on to Eivind to upload. Note that the file *EU\usage.txt* is the text in the Grey notepad called Usage.

Changelog:
v2.2
- Scripts on all pieces and containers are now in the repo, with in-game pieces and containers using Require
- Claim containers only accept claim tokens
- White's tag chit container only accepts tag chit tokens
- The opening splash screen now has a minimise button and a maximise button
- Imperial Influence cubes will now return to the track if you delete them
- The Defending the HRE slot now allows tag chits to snap instead of cubes
- When the game is loaded, all players are put in the spectator seat. When a player connects, they are put into a spectator seat. This prevents revealing of hidden information.
- Changing stability logs a message in the chat window
- Snap points for the main map are now generated in the script when the map loads
- Snap poinst for trade protection slots, expanded trade nodes, and milestone tags have been added
- Event 468b has been corrected to 458b in the team variant of S2-03
- Light ships will now snap to trade protection slots and lay sideways when placed there. They will flip to right side up if placed off a trade protection slot
- Double-sided tokens will now only snap to certain points depending on which side is up
v2.1
- 2024-07-05 Manual setup now includes buttons to set up components for a realm, swap two colours, and remove a colour from the table
v2.0
- Scripted version for scenario selection, tagged objects, smart delete, etc
v1.0
- Initial release version with all components inclded