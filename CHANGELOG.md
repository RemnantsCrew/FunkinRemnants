# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.2] - (2026-09-01)

## Added

- Created `RemnantsSoundUtil` (It adds two useful functions)
- Game Over Animations and Pause Music now adapt to the current character in "Glitcher (Remnants Mix)".
- The "Back to Exit" graphic now pushes itself out of the way when the QT Rewired Plush Button is available.
- Added LunarzNova's "Stupid Fucking Capital N" to their "Sugarcrash! (Remnants Mix)" credit.
- Added a new secret random chance to Stress.
- Added a Remnants variant of the "Clear Percentage" Graphic in the Results Screen.

## Changes

- Re-Exported "Stress (Remnants Mix)".
- Updated "Tutorial (Remnants Mix)" Vocals.
- Updated "SugarCrash! (Remnants Mix)" Vocals.
- Updated Week 2's dark overlays to be a vignette.
- Remnants Credits are now displayed as in-game objects instead of being entirely in a video.
- Updated Week 2 Album Cover.
- Updated Week 5 Stage Boppers.
- Updated Week 7's Sky to be more optimized.
- Moved all of Remnants Options into their own category in the Options Menu.
- Updated Discord RPC to use the native implementation in 0.8.6.
- Random Chances are now data driven! (All of their percentage data are now in `remnants-chances.json`)
- Completely reworked the Remnants Results implementation for better memory management.
- Changed the mod ID from `funkin-remnants` to `funkin_remnants`.
- Made Intro Bumpers transition into In-Game Cutscenes better. ([3267a2c](https://github.com/RemnantsCrew/FunkinRemnants/commit/3267a2c3f1a396648e75a93e6374509bb73b1dff)) - by @ComedyLost in [#27](https://github.com/RemnantsCrew/FunkinRemnants/pull/27)
- Moved all Mechanic notekinds for "DadBattle (Remnants Mix)" into a single script.
- Updated all of Darnell spraycan sprites for better consistency.
- Tweaked the chart for "Tormentor (Remnants Mix)".
- Re-Exported all of Monster & Pico Remnants sprites.
- Re-Exported GF Base, Car & Dark sprites.
- Merged Luis and Dad into a single atlas.
- Adjusted "Cocoa (Remnants Mix)" and "Fresh (Remnants Mix)" difficulty ratings in Freeplay.
- Various minor code optimizations.

## Fixes

- Fixed Spirit's trail not showing in 0.8.6.
- Fixed the Remnants Results crashing in 0.8.6.
- Fixed the "Tormentor (Remnants Mix)" shader in 0.8.6.
- Fixed Remnants BF Freeplay Cartoon Animation in 0.8.6.
- Fixed the "Lose..." text not fading out when a shader is applied in 0.8.6.
- Fixed BF Remnants Car and BF Remnants Glitcher Death Animations displaying wrong in 0.8.6.
- Fixed the credits completion trigger without even completing every song in the mod in 0.8.6.
- Fixed Remnants Overlay Event not being able to fade under the hud if you don't start the song with one.
- Fixed "Roses (Remnants Mix)" Random Chance Sounds not pausing when they are meant to.
- Fixed "Remnants (Remnants Mix)" Dialogue Sounds not pausing when they are meant to.
- Fixed `RemnantsMusicReplacer` not replacing a music when coming from a substate.
- Fixed the "Remnants Random" theme playing in Non-Remnants freeplay menus.
- Fixed Performance Mode in "Lit Up (Remnants Mix)", "Lit Up (BF Remnants Mix)", and all Week 7 songs.
- Fixed the "BF catching GF" animation missing in the "Stress (Remnants Mix)" cutscene.
- Fixed BF Remnants Dark Right Pose not showing up as intended.
- Fixed 2hot spraycans causing a lag-spike everytime they spawn.
- [MOBILE] Fixed the custom combo offsets showing up wrong.
- Fixed the "Hey!" animations not playing correctly in "Bopeebo (Remnants Mix)".
- Fixed Week 5 Stages not creating all the snow layers.
- Fixed the bumpers playing in Non-Remnants songs.
- Fixed 2hot spraycan impact particle being missing.
- Fixed GF Fear animation not playing long enough.
- Fixed BF Holding GF's game over offsets.
- Removed unused spritesheets from the files.





## [1.1.1] - (2026-04-09)

### Changes

- Updated Line Art for Dad & Darnell's Stickers.
- Updated every script to be contained in the "funkin.remnants" package.

### Fixes

- Fixed Random song being overridden incorrectly.
- Fixed GF's Left Pose Repeating.

### Removed

- Removed the Fart Chance.



## [1.1.0-expansion] - (2026-04-01)

### Additions

- Added 2 New Remnants Mixes! [Smash (Remnants Mix) & Ridge (Remnants Mix)]

### Changes

- Updated Song Mixing for Remnants Erect!
- Updated Base GF's Adobe Animate Atlases to be more optimized.
- Updated the Remnants Freeplay Script to have more customization.
- Updated Philly Nice (Remnants Mix) ending fade times.
- Updated a ton of scripts to be more optimized and readable.

### Fixes

- Fixed Mommy Mearest being frozen on her dodge pose when dying.
- Fixed Grieving's Game Over not showing during the flashbacks.
- Fixed Opponent Strumline Note Hit Glow not showing on mobile.
- Fixed Blazin' Characters not holding their animations.
- Fixed being able to see body parts through some Week 2 Characters.
- Fixed some Week 2 Dark Character Offsets. (Help me)
- Fixed Remnants Pico Character Select Animation Errors.

### Removed

- Roses (Remnants Mix) [Hard] - Removed tiny Sustain Notes.
- Removed Run (Remnants Mix).



## [1.0.3] - (2026-03-26)

### Additions

- Added new overlay events to Tormentor (Remnants Mix).
- Added alternate GF bop animation during the ending of Cocoa (Remnants Mix).
- Added a ton of new Alt Instrumentals to other songs & mods.
- Added Alt Instrumental unlock checks so that you have to beat songs to unlock their instrumentals.
- Added blue blood to running bg tankmen in Stress (Remnants Mix) when Naughtyness is off.
- Added funni Game Overs to DadBattle and M.I.L.F's mechanics.
- Added No Animation Notes to Cocoa (Remnants Mix).
- Added Script Parenting to Remnants Pico and Remnants Nene's character scripts.
- Added Censored version of the Roses Secret Dialogue.
- Added new secret random chances to Remnants! (Pico Mix) & Weekend 1.

### Changes

- Updated a ton of characters to use Adobe Animate Atlases.
- Updated BF's Adobe Animate Atlases to be more optimized.
- Updated Spooky Kids, Pico & Senpai's Freeplay Pixel Icons to match their original designs. (Like a remnant!)
- Updated Monster (Remnants Mix) Difficulty Ratings by incrementing them by 1.
- Updated all character offsets to be consistent with base game's.
- Updated Credits Video.

### Fixes

- Fixed charting errors in Remnants!, Remnants Erect!, DadBattle, Monster, Philly Nice, Satin Panties, Cocoa, Eggnog, 2hot, 2hot BF, & Blazin'.
- Fixed Blazin' (Remnants Mix) Giga Punch secret triggering on every pico uppercut if rolled.
- Fixed the Remnants Overlay Event not resetting Retro Fades properly when resetting mid fade while "Tween On Restart?" is on.
- Fixed Pico Speaker's animations spazing out.
- Fixed Flying Tanks during Week 7 cutscenes.
- Fixed Results Text being offset.
- Fixed Glitcher Characters not being alined properly.
- Fixed the Remnants Player Save from throwing a Null Object Reference due to removing the mod. ([1d8ba2e](https://github.com/RemnantsCrew/FunkinRemnants/commit/1d8ba2ef13bd32a3da3a5ddec0a8d24eec60c91f) & [c568438](https://github.com/RemnantsCrew/FunkinRemnants/commit/c56843861151ad584d3e930b311399d2290f9683)) - by @ComedyLost in [#12](https://github.com/RemnantsCrew/FunkinRemnants/pull/12) & [#25](https://github.com/RemnantsCrew/FunkinRemnants/pull/25)
- Fixed many other minor stuffs.

### Removed

- Removed Note Hit Glow from the Opponent's Strumline.
- Removed Some Problematic Media.

## New Contributors for 1.0.3

* @ComedyLost made their first contribution in [#12](https://github.com/RemnantsCrew/FunkinRemnants/pull/12)



## [1.0.2] - (2026-02-25)

### Additions

- Added Custom "introText" that appears on Remnants Menu Boot.

### Changes

- Updated Santa to Fully Use Adobe Animate Atlases.

### Fixes

- Fixed Girlfriend Not Rendering Correctly on Boyfriend's "Good" Results Screen.
- Fixed Results Fading in from Yellow on Specific Ranks.
- Fixed Results Background Not Using "flashColor" as Intended.
- Fixed Date on the 1.0.1 Changelog since it was a day behind.

### Removed

- Removed Girlfriend's Sparrow Spritesheet for her "Car" Variation since it went Unused.
- Removed Sammy's Cunt Ass Bitch Ass Sister



## [1.0.1] - (2026-02-24)

### Additions

- Added this Lovely Changelog!
- Added New "Metronome" Intro to the Tutorial (Remnants Mix) Cutscene.
- Added Alt Poses in Senpai (Remnants Mix) & Thorns (Remnants Mix).
- Added Dialogue to Grieving (Remnants Mix).
- Added Miss Poses to Luis in Grieving (Remnants Mix).
- Added a New Secret Chance to the End of Roses (Remnants Mix).
- Added the ability for the Merch button to cycle between Donate, Kickstarter & Goodies.
- Added Censored BOOBIES Graphic for when Naughtyness is Off in Grieving (Remnants Mix).
- Added a Fade-In to the Results Background. ([82f635b](https://github.com/RemnantsCrew/FunkinRemnants/commit/82f635bc067291d0b22c5c6e9b71c383bbabf031)) - by @macohi in [#1](https://github.com/RemnantsCrew/FunkinRemnants/pull/1)
- Bopeebo (Remnants Mix) [Hard] - Added an Extra Note for Dad in Beat 93.
- Added Voice-Acting to the Secret Bee Movie Dialogue.
- Added More Super Awesome Files to the Week 1 Folder.

### Changes

- Updated Remnants (Pico Mix) Events.
- Updated Philly Nice (Remnants Mix) Events.
- Updated Glitcher (Remnants Mix) to Fade Out at the End.
- Updated Guns (Remnants Mix), Roses (Remnants Mix), Thorns (Remnants Mix), 2hot (BF Remnants Mix) & Playtime (Remnants Mix) with more No Animation Notes.
- Updated Most Song-Specific Fades and Flashes to use an Event.
- Updated/Re-Exported Some Icons & Images.
- Updated Week 5's Boppers & Beppers to use Adobe Animate Atlases.
- Updated Songs Scripts to use Song Sequences instead of Beat Hits.
- Updated the Instant Ending Fades in Darnell (BF Remnants Mix) & Tormentor (Remnants Mix) to Quick Fade Outs.
- Updated Blammed (Remnants Mix) Difficulty Ratings by incrementing them by 1.
- Updated High (Remnants Mix) Difficulty Ratings by lowering them by 1.
- Updated M.I.L.F (Remnants Mix) Difficulty Ratings by incrementing them by 2.
- Updated Tormentor (Remnants Mix) "WAKE UP" Subtitle to "WAKE UP!". (Very very important change I know!)
- Updated Remnants Albums to Only use a Single JSON. ([2432e2e](https://github.com/RemnantsCrew/FunkinRemnants/commit/2432e2e7b0750dcf4ddb84fd43cbde7117572204)) by @CrusherNotDrip in [#9](https://github.com/RemnantsCrew/FunkinRemnants/pull/9)

### Fixes

- Fixed Compatibility with Funkin' v0.8.2.
- Fixed Remnants Soul BF showing up as the HaxeFlixel Logo on non-Windows Devices.
- Fixed Tutorial (Remnants Mix) Intro Cutscene Not Resetting Properly when Retrying the Song.
- Fixed Backspace Graphic Overlapping QT: Rewired's Plush Pop Up. (Not that it matters anymore!)
- Fixed Remnants Character Icons being Offset. ([6815404](https://github.com/RemnantsCrew/FunkinRemnants/commit/6815404a8bc95b3d30ecbd46a2109e537b85e0a4)) - by @macohi in [#2](https://github.com/RemnantsCrew/FunkinRemnants/pull/2)
- Fixed Credits Polymod Exception on Mobile. ([98acc33](https://github.com/RemnantsCrew/FunkinRemnants/commit/98acc334b8dcb2503876c275c51c2697724d568c)) - by @CrusherNotDrip in [#7](https://github.com/RemnantsCrew/FunkinRemnants/pull/7)
- Fixed Winter Horrorland (Remnants Mix) clipping on Mobile Resolution.
- Fixed More Offsets! Yayyaayayayayayyyy!!
- Other Miscellaneous Fixes & Optimizations.

### Removed

- Removed Guns (Remnants Mix) Alt Instrumentals. (They were off key)
- Removed Execution (Remnants Mix).

## New Contributors for 1.0.1

* @macohi made their first contribution in [#1](https://github.com/RemnantsCrew/FunkinRemnants/pull/1)
* @CrusherNotDrip made their first contribution in [#7](https://github.com/RemnantsCrew/FunkinRemnants/pull/7)



## [1.0.0] - 2026-02-14

### Additions

- ADDED EVERYTHING!!
