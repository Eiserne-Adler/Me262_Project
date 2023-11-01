# Changelog

Please list the changes you've made in this file. We should try to follow the guidelines listed here. https://keepachangelog.com

## Version 2.0.0 - 1 Jan 2022

### Added
- Flight Model:
  - Realistic Flight Dynamics (it's pretty nifty).
  - Realistic Engine Simulation.
  - Flight control actuators.
  - Realistic force based slat simulation (spring and gravity).
  - Stabiliser trim.
  - Wing vapour effect.
  - Cockpit shake effect.
  - Basic wing overstress.
  - Damage to engine and aerodynamic surfaces (physically simulation only).
  - Realistic suspension.
  - Differential brakes.
  - Compatibility with all carriers.

- Systems:
  - Fuel system:
    - Zero and negative g effects on fuel flow.
    - Boost pump, Engine pump and Wing pump failure effects.
    - Emergency transfer is simulated.
    - Caution panel ladder lights for boost and transfer.
    - Fuel panel switch functions.
    - Bypass switch can bypass the wing tank in case of wing leak.
    - Flight refuel switch no longer bypasses wing tank, this enables/disables external tank flight refueling.
  - CP-741/A Bombing Computer:
      - In range light illuminates when within a distance that pulling up 45 degrees would release the bombs.
  - AN/ARC-51A UHF Radio:
    - Radio with VOIP *(thanks TheRealHarold)*
    - Salute option and Request Launch options to radio menu.
  - AN/ARN-52 TACAN and AN/ARA-63 MCL:
      - TACAN for moving objects (tankers and ships) and portable TACAN stations.
      - Manual Carrier Landing (MCL/ICLS) system and its bit test.
      - Note for TACAN and MCL/ICLS: The method used relies on the mission file. This means for a TACAN or MCL to be detected the unit (or unit with the same unit name) must exist in the mission file. Replacement objects can be spawned in to replace dead units however they must have a name which contains the original name to be correctly found by the TACAN and MCL system. This method should work 99% of the time with regular missions however if you run into trouble it is worth checking the following conditions:
        - Unit with TACAN/MCL exists in the mission file (placed in editor).
        - Equivalent unit with a name which contains the original name of the unit placed in the editor (for example UNIT3 would find a unit named UNIT3_OTHERSTUFF, if UNIT3 needed to be respawned).
        - Unit does not share a channel regardless of X or Y band.
  - AN/APG-53A Radar overhaul:
    - Radar can cast many more rays per frame.
    - Gaussian beam shape is simulated using monte carlo sampling.
    - Range lines can now be lit by the reticle knob, and are now drawn on top of the radar returns and remain visible.
    - Updated screen simulation and storage to be more realistic.
    - Updated radar reflection values for cities and other reflective terrain features.
    - Ships can be detected by the radar.
    - A Legacy Mode option in special menu is present allows might save users with older CPUs some performance.
  - AN/ASN-41 Navigation Computer:
    - System now integrates from starting position functioning correctly.
    - Integration happens in D1 and D2 only, set to D1 or D2 to have the correct position. Switching to STBY will pause the integration.
    - The AN/APN-153 Doppler Navigation Radar is vital to preventing drift. Minor errors are introduced for sensors producing drift over time. Average drift is about 2 - 3 nautical miles per hour. Drift will increase with heavy maneouvering.
  - AFCS and APC:
    - Re-wrote AFCS and APC for EFM integration.
    - AFCS rolls out when disabling heading mode.
    - AFCS test (cursory implementation, the indicators do not function correctly yet).
    - Stability Augmentation Switch (yaw damper).
  - Catapult Power Mode toggle for carrier launches - DEFAULT mode supports the Stennis and Supercarrier. A new mode, AUTO makes speed and mass calculations when launching from  aircraft carrier mods (for example, the HMAS Melbourne) more realistic. (Default: 'LCtrl+U').
  - Oxygen system (hypoxia is enabled).
  - Air data computer AXC-666 for AN/ASN-41 and CP-741/A, no external functionality, but this lays some ground work for more realistic simulation.

- Weapons and Loadouts:
  - SUU-25 Parachute illumination pod for night ops.
  - Empty Fuel Tanks.
  - AIM-9 missiles available on outboard stations (thanks to the evidence of VF-45)

- Cockpit Model:
  - Radio frequency printouts on the AN/ARC-51 label. Labels are dynamically generated from the mission file.
  - MCL Panel.
  - Misc Switches Panel on Right Console.
  - AFCS Test panel switches.

- Textures:
  - Individualised helmet textures and pilot appearances.
  - Damage textures.
  - Cockpit normal maps.
  - Cockpit interior.
  - Countermeasures dispensers.
  - Normal maps.

- Liveries:
  - Community A-4E-C III "Forever Free".
  - Community A-4E-C IV "Sea Otter".
  - Argentine Brigada IV.
  - Argentine Brigada V.
  - 3 new USN liveries for USS Forrestal 1967.
  - Community IV: Sea Otter, 2021 (Fictional).
  - Australian Navy Squadron 805, 1972. *(thanks HellesBelle)*
  - Brazil Marinha do Brasil VF-1 LoViz, 2018.
  - Finland FiAF, 1984 (Fictional). *(thanks FinCenturion)*
  - Malaysia TUDM M32-29 No.9 Squadron, 2004. *(thanks JacobBadshot)*
  - RAF Empire Pilots Test School Raspberry Ripple. (Fictional) *(thanks FlyingHueman)*
  - RNZAF Golden T-Bird No.2, Squadron Ohakea, 1986. *(thanks Corsair016)*
  - Unique fuel tank to 'Brazil Marinha do Brasil VF-1 LoViz, 2018' livery.

- Sounds:
  User Feedback:
  - Huffer airflow valve.
  - Engine ignitor.
  - Engine operation.
  - Avionics initialisation whine.
  - Gear pod door and locking.
  - Gear, flap and airbrake hydraulics.
  - Aerodynamic slats stoppage.
  - Ariflow, with additives for Gear, Flaps, Speedbrake and Spoilers.
  - Cockpit rattle at high AOA.
  - Wing stress.
  - Landing gear overspeed.
  - Fuel sloshing.
  - Wheels touchdown.
  - Flaps lever.
  - Emergency levers.
  - Illumination potentiometers.
  - Radar filter plate positioning.
  - Speedbrake switch.
  - Harness lever.
  - AIM-9 sidewinder (fixes the bug where the some useres were missing sidewinder tones).

- Missions:
  - Reconnaissance and Escort aircraft tasks.
  - Argentina and Chile to countries and assigned appropriate liveries.
  - gunsight and radar night time setup.
  - Adverse weather carrier landing.
  - Carrier landing.
  - Bomb trucking.
  - Aerial Refueling.
  - New missions from sidekick65, SPINEG, Cubeboy.

- Inputs:
  - Basic support for FFB joysticks.
  - Controls Indicator.
  - Custom view positioning for VR HMDs. Position is lowered and moved slightly forwarded from the previous position
  - VR config to allow the use of VR controllers (throttle function is incomplete).
  - Special menu options:
    - Slider for FFB sticks at which deflection of the stick to switch into AFCS CSS mode.
    - Simple Braking (Ruder-Assist).
  - New inputs for slats lock toggle keybind (for fomation flying), AFCS, BDHI, chaff panel, fuel system, gunsight, master exterior light switch, AN/ARN-52 TACAN, oxygen system, AN/APN-141 Radar Altimeter, ECM panel, AN/ARC-51 Radio, Master Test Switch, Altimiter pressure, Weapon Function Selector, and many more.

- PDF manual and kneeboard documentation with checklists and guidance on many aircraft systems. *(Thanks to the many community contributors and proofreaders for their assistance compiling this information)*

### Changed

- General:
  - Menu icon.
  - Menu screen.
  - Updated installation and troubleshooting instructions.

- Flight Model:
  - Surfaces, horizontal stab, elevator, vertical stab, rudder, to not use beta, as this previously caused an ill defined wind axes to body transformation at high beta values causing the lift/drag values to be inverted.
  - Significantly increased slats lift.
  - Increased induced drag at high AoA (unrealistic negation of lift and drag caused by the issue above at > 90 deg AoA or beta).
  - Increased wing drag onset at > 40 degrees AoA.
  - Beta calculated per surface rather than using the overall airframe beta. This fixes some edge of the envelope nastiness
  - XY moment of inertia to match real value (effects tumbling).
  - Slats lift increased slightly.
  - Engine damage has now more dynamic effect.
  - Improved ground handling and break handling.
  - Slow release for brakes when using keyboard rather than instantly going to zero. This allows the brakes to be feathered below the point where the wheels lock.
  - Overhaul centre of gravity modelling.

- Systems:
  - AFCS will not engage with rudder uncentred.
  - Re-wrote AFCS for EFM integration.
  - ILS mode on TACAN has been changed to A/A and functions as such.
  - Changed radar to be compatibile with SRS pull request.
  - ASN-41 Navigation Computer:
    - AN/ASN-41 error was being cancelled due to mathematical operation. This has been rectified. The drift will now be significant (1-2 nautical miles per hour, depending on manoeuvres).
    - Slew knob can be used to change the destination coordinates in STBY, D1, and D2 modes.
    - Push-to-set knobs no longer change coordinates in D1 and D2 modes.
  - Fuel System:
    - New bypass switch will bypass the wing tank in case of wing leak.
    - Flight refuel switch will no longer bypass wing tank, this enables/disables external tank flight refueling.

- Animation:
  - Rudder pedal animation no longer tied to rudder position.
  - Updated mirror code for better rear visibility in mirrors.
  - Lowered default cockpit view to allow visibility of the zero mil position.
  - Nosewheel castering adjusted to match animation.

- Textures:
  - Textures renamed to be standardised, to prevent all known mod conflicts.
  - Roughmets, weathering, normal maps.
  - Wheels and gear.
  - Cockpit textures (in external view). *(thanks JP Gabobo)*
  - Engine exhaust. *(Thanks HellesBelle)*
  - Weapon Function Selector labels.
  - Canopy seal.
  - Gunsight. (*thanks Sport)*
  - Radar screen and filter.
  - Ejection seat and handle.
  - ADI and backup.
  - Many cockpit objects.

- Sounds:
  - LABS tone is played when the Bomb Release Button is depressed CMPTR mode.
  - Improved sound mixing.
  - Updated main menu intro sound.
  - Sound mixing.
  - More realistic engine ignitor timing.

- Liveries:
  - Standardised livery lua files.
  - Improved inaccuracies and naming across liveries.

- Inputs:
  - Keybinds recategorised.
  - Improved keybinding names.
  - Renamed fuel pressurisation.
  - Updated default controller bindings for Warthog throttle and CH Fighter Stick.
  - Moved keybinds to increase EFM maintainability: **this unforuntately destroys all your existing keybinds**.
  - Aligned controls indicator to bottom-left (friendlier for VR).
  - Keyboard: aileron response now resets. Elevator does not.

- Missions:
  - Quickstart missions weather updated for 2.7.
  - TACAN and MCL training mission.
  - The radio manual frequency now starts at the channel 1 preset.
  - Enabled cockpit lights by default between the 1700 and 0500 hours.

### Removed
- Systems:
  - SFM carrier launch mechanism (fake afterburner).
  - SFM special menu options.
  - Landing gear overspeed message.
  - Removed gunsight slaving to the radar. The gunsight must now be set to zero when using the CP-741/A bombing computer.
  - Old fuel system.
  - Nose wheel steering.

- Weapons and Loadouts:
  - Loadouts that were non-functional.
  - Weapons that do not have their supplementary systems modelled.

- Inputs:
  - Duplicate multiplayer chat command.

### Fixed
- Flight Model:
  - Carrier Launch Mechanism present on runways (see removed).
  - Carrier trap from airstart causes explosion.
  - Aircraft drift during carrier operations.
  - Brakes no longer jump to 50% application.
  - Aircraft no longer gets stuck connecting to SuperCarrier.
  - Spoilers extend at 70% RPM *(thanks pohlinkzei)*.
  - Wake turbulance from another aircraft no longer causes pilot blackouts.

- Systems:
  - Fuel System:
    - Empty tanks fueling correctly at tanker.
    - Fuel trans light displays if the integral wing tank empty.
  - AFCS:
    - AFCS now rolls out correctly when disabled during heading turn.
    - Reversion from CSS (or inital engage) to ATTITUDE should roll the aircraft level when within 5 degrees. *(thanks OpticFlowX)*
  - AN/ARC-51A UHF Radio:
    - Volume knob no longer starts at at 0.
    - JTAC no longer missing from comms menu.
    - ARC-51 GXMIT no longer returns a nil state.
  - AN/APN-141 Radar Altimiter index knob.
  - AN/ARN-52 TACAN or AN/ARA-63 MCL beacons no longer behave as if they are transmitting if the source is destroyed.
  - Deck offset and angle can now be adjusted based on ship type. *(thanks OpticFlowX)*
  - AN/APG-53A Ground Radar performance improvements.
  - Flap blowback valve behavior.
  - Airspeed indicator uses calibrated airspeed instead of equivalent airspeed.

- Weapons:
  - M-81 and M-88 bomb negative pylon drag after release from MER/TER rack.
  - MK-77 jettison no longer causes crash to desktop.
  - Corrected negative drag issue caused by the CBU 1 and 2 Bomblets.
  - Corrected LABS tone function when the readied stations are empty.
  - Restored smokewinder pod functionality.

- Animations:
  - Wheel spinning.
  - Engine windmilling at low speed.

- Textures:
  - Mis-labeling of radar PLAN/PROFILE on the Miscellaenous Switches Panel.

- Liveries:
  - USMC fixes.
  - Eliminated typo in Brazil Marinha do Brasil VF-1 15 ANOS, 2013.
  - Updated roughmets for 'RNZAF Golden T-Bird No.2, Squadron Ohakea, 1986' livery.

- Sounds:
  - Clamped airframe stress sound.
  - Adjusted volume of some sounds to be less distracting.

- Inputs:
  - Hook controls are now bindable by peripherals.
  - FFB pitch trim now works.
  - FFB now works for the AFCS.
  - Restored missing AN/APG-53A Radar bindings.

## Version 1.4.2 - 4 October 2020

### Added

### Changed

- refactor weapon model names and code to remove IC conflicts. Affected weapons:
  - AN-M66
  - AN-M81
  - AN-M88
  - BLU-3B
  - BLU-4B
  - Mk4 HIPEG
  - Mk77mod0
  - Mk77mod1
  - Mk-81SE
  - SUU-7
- update FOV limits to from 30, 120 to 20, 140

### Deprecated

### Removed

### Fixed

## Version 1.4.1 - 2 September 2020

### Added

- added dimming wheel on angle of attack indexer
- ladder lights will now dim when INST LIGHT knob is in any position other than the OFF position for night operations
- glareshield lights will now dim when INST LIGHT knob is turned up past the first 20% (approximately)

### Changed

- changed warning lights to use `additive_self_illuminated` shader as `transparent_self_illum` has been deprecated in DCS 2.5.6.50321
- updated brightness range for the gunsight
- updated cockpit lighting brightness for DCS lighting changes
- gunsight brightness is now a logarithmic function to allow for better brightness control
- tweaked glareshield annunciator textures for night lighting (a-4e_lights_1, a-4e_instr_details_1)
- updated texture for gear handle (a-4e_instr_bckgd_3)

### Deprecated

### Removed

- removed payload option to load incomplete buddy pod

### Fixed

- fixed clickspots on throttle where they do not track the position of the throttle
- fixed incorrect spelling for `TRIMMER SWITCH - LEFT WING DOWN`
- updated carrier detection code for MIZ file version 18

## Version 1.4 - 10 June 2020

### Added

- 3D/Cockpit Model
  - added radar glow
  - updated cockpit lighting. Added red floodlights on both sides of the ejection seat
  - made clickable (oxygen switch, walleye/shrike selector, air-conditioning panel)
  - new sidewinder volume knob
  - added destination slew knobs for navigation computer panel
  - new compass controller panel model (clickable but currently not functional)
  - revised engine control panel with clickable switches
  - new AFCS test panel model (currently non-functional)
  - updated misc switch panel for accuracy
  - external fuel quantity check is now a button
  - new light indicator model for manual fuel control, jato, and doppler memory mode indicators
  - implement clickable spot for hiding the control stick (#9)
  - Added clickspots to toggle rear view mirrors in the cockpit
  - added animated brake pedals to cockpit
- 3D/External Model
  - New anti-collision light model and effect
- reworked ECM control systems
  - upgraded AN/APR-23 to AN/APR-25
  - added separate APR-27 simulation
  - added ALQ-51A
  - added ALQ-51A BIT Test
- air cond panel is now clickable
- added emergency fuel shutoff control
  - engine will shutdown if lever is set to 'emer off'
  - engine will not start with lever in 'emer off' position
- added fuel dump capability
- added command for manual flight control override. Update brake hydraulic system
- added refuelling probe light
- added radar scope glow. radar scope glow is linked to brilliance setting
- added option to disable catapult location checks (client side checks)
- toggle switches and multiposition switches are now animated
- added initial implementation of huffer simulation and sounds. moved external power logic to the huffer.
- added native NVG and NVG keybindings
- added clickable shoulder harness handle and secondary ejection handle
- added function for APN-153 to calculate wind vector and pass to ASN-41
- ASN-41 will now display wind vector when in D1 or D2 mode
- Initial implementation of manual and primary fuel control mode
  - manual fuel control warning light will come on when engine fuel control is in manual mode
  - manual mode will occur when fuel control switch is in the manual position
  - manual mode will occur when engine rpm is less than approximately 5-10 percent
- added sdef for engine sounds to allow for customisation for engine sounds
- added ability to export radar display. Display name is "A4E_RADAR"
- Made JATO ARM-OFF and JATO JETTISON-SAFE switches clickable. Switches are clickable but no logic is coded in the systems due to lack of JATO.
- Added axis binding for gunsight elevation control
- added support to take off from the Sao Paulo A12 and Charles de Gaulle carriers
- added navigation log page to kneeboard
- added option to remove ECM control panel from cockpit via mission editor
- added option to choose between MIL Power or Manual catapult launch in A-4E options menu
- added ability to map two axis to the brake axis. Both axis still function as one combined brake axis and does not perform differential braking.
- added payload options for 2 x AN-M57A1 and 3 x AN-M57A1 with the TER
- added PictureBlenderColor property which is required for newer ME icons
- Liveries:
  - added Trainer USMC VMAT-102
  - added Trainer USN Bare Metal 1956
  - added USMC VMA-124 Memphis Marines
  - added USN VA-45 Blackbirds
  - added USN USN VA-212 Rampant Raiders
  - added Trainer: USN VC-5 Checkertails
- Textures/Exterior:
  - added Roughmet gloss-level options
  - added hardpoint bottoms textures
  - added MER rack textures
- Missions
  - Added Nevada missions

### Changed

- new collision model and updated critical damage values
- updated hydraulic system to be dependent on engine rpm
- changed layout of option menu
- moved clickable definitions to separate file (clickable_defs.lua)
- tweaked switch behaviour to be consistent between left/right clicks
- weapons and RWR sounds will now be played through the pilot headphones. Sounds will sound like it is coming through the helmet when "hear like headphones" is used"
- AI model now uses 3D argument lights
- updated AN/ASN-153 warmup and test sequence timings (1 minute for test and 5 minutes for warmup)
- changed ASN-41 to require a push-and-turn to change values (same in real world, left + right-click and drag or left-click and scroll)
- new UI elements for version 1.4
- updated MER model and textured
- Hide stick option is now consolidated with main sim options. Remove option to hide stick from A-4E-C special options menu.
- rewrite more accurate simulation of APN-153 warmup time. Change APN-153 TEST sequence.
- changed brightness of lights to match lighting changes in 2.5.6
- renamed radio in mission editor to ARC-51A
- turbine fan blade is now an opaque texture instead of translucent
- updated hydraulic system pressurization to occur when engine startup has reached idle rpm. (#189)
  - Although idle rpm is set at 55%, the sim approaches but does not reach 55.0 or greater upon startup. Lower the hydraulic checks to 54.9 will guarantee the trigger to occur for engine startups.
- changed AN-M30, AN-M57, and AN-M65 to use models and weapon definitions in DCS Core
- updated weapon payloads to use newer TER model in DCS Core
- THREAT light on glareshield has been returned to the original IFF light. RHWS warnings are available on the ECM panel as per aircraft.
- increased IR emission coefficient to 0.5 to be more inline with other modules.
- 3D/External model
  - updated navigation lights
  - fixed uv for pylons, bypass fan, fuselage bottom
  - new model and animation for rotary beacons
- Textures/Cockpit:
  - updated boards, labels, buttons
  - updated cockpit gass
  - updated internal photograph
  - fixed gauge edge bleed
  - misc. minor 2019 improvements
- Textures/Exterior:
  - removed/re-packaged loose files
  - replaced exterior lights textures
  - fixed interior fan, engine exhaust pipe, engine intakes
- Liveries:
  - updated Aggressor camos for better matching with weapons connections
  - updated Blue Angels with custom Roughmet
  - updated NZ with more accurate markings
  - renamed "Unmarked" so it loads as the default instead of Argentina.
- Missions:
  - updated Caucasus missions with new liveries, times and weathers
  - updated Persian Gulf missions with new liveries, times and weather
- UI:
  - New main menu splash screen image
  - New briefing windows images
- Input:
  - Major rewrite of keybinding files. HOTAS profiles will now use diff files instead
  - Duplicate keybinds are removed
  - Standardise naming convention of binding names and categories
  - fixed some standardisation for "else" and capitalisation for "Special For Joystick"
  - new binding diff file for CH Fighterstick and removed old binding file for Warthog joystick. Updated throttle binding.
  - added diff bindings for Sidewinder Force Feedback 2
  - added default binding for Logitech Wireless Gamepad F710 in XInput mode

### Deprecated

### Removed

- removed custom models and weapon definitions for AN-M30, AN-M-57, AN-M65

### Fixed

- ECM panel indicators will now work with master test light button
- gear handle light will no longer light up when primary ac power is not available
- spoilers are now linked to the hydraulic system
- flaps and gear are now dependent on utility hydraulic
- fixed bouncing nose gear
- fixed briefing map to auto load with A-4E-C missions
- restructured sounds folder for sound asset isolation. Sounds should no longer affect other modules.
- cockpit damage is revised to fix issue where the sim counts the aircraft as dead but the pilot is still alive.
- fixed issue where red flood lights flashes to full brightness when turning on
- fixed aileron trim function for MS FFB2 joystick (#137) (AFCS is still not compatible with MS FFB2)
- fixed windspeed and wind direction displayed on ASN-41 and BDHI when in test mode
- fixed issue where A-4E-C does not appear in encyclopedia
- corrected warthog bindings for flaps up and flaps down
- fix bug where countermeasure values were not updated after rearming or with unlimited weapons
- make canopy functional after ground crew repair
- fixed external anti-collision lights not turning off when master light switch is turned off or power is disconnected. (#199)
- fixed hookpoint for better catapult wire tracking.
- fixed issue where probe light is not connected to the master exterior light switch
- fixed issue where ECM panel still functions without power
- fixed issue with missing shrike pylons in multiplayer
- fixed issue where pylon cannot be removed from AI aircraft
- added back engine exhaust smoke
- fixed issue where engine compressor fan does not rotate for AI and multiplayer (#219)
- 3D/Cockpit Model
  - fixed canopy uv mapping
  - fixed white floodlight canopy glare
  - fixed nav panel digit glitch
  - fixed incorrect appearance for control hydraulic annuciator on state (#176)
  - fixed green glow from radar while radar is powered off and in the dark. (#57)
  - fixed issue with pylon 1 not being removed on AI model
  - fixed issue with shrike pylons not appearing correctly in multiplayer
  - fixed normals on top surface of spoilers

## Version 1.3.1 - 17 June 2019

### Added

- Added new quick start (instant action) missions (4 in Caucasus, 4 in Persian Gulf).
- New keybindings
  - Added "clickable cockpit" binding to mouse
  - Added AWRS keybinds
  - Added axis for white floodlights
  - Fixed lighting axis
  - Added APC keybinds
  - Added engine start/stop keybinds for joystick
  - Added View padlock bindings
  - Added BOMB ARM and BDHI keybinds
  - Added new incremental controls for lighting

### Changed

- Corrected cockpit position with respect to external model (Gunsight alignment is slightly affected but the offset should be negligible)
- Aircraft will now be hooked into the catapult if spawned on the catapult.

### Deprecated

- removed unused FC3 keybindings for HUD and HUD modes

### Removed

- Some unused keybindings may be removed. Primarily leftover FC3 keybindings.

### Fixed

- fixed floating nosegear
- Fixed init code where left wing tip nav light turns invisible when the master light switch is toggled at the start
- Updated anti-collision rotation angle to 180 degrees
- Fixed RWR initial volume to match volume position
- Added aggressor liveries to AUSAF
- Fixed condition where flaps indicator is invisible when power is not available
- replaced EDM8 files with EDM10 files as support for EDM8 was dropped with 2.5.5.31917
- updated theme to get loading image automatically loaded when A-4E-C is used

### List of new keybindings

#### Mouse

- Clickable Mouse Cockpit Mode On/Off

#### Keyboard

- Lock view (cycle padlock)
- Unlock view (stop padlock)
- All missiles padlock
- Threat missile padlock
- Lock terrain view
- AWRS: Toggle multiplier
- AWRS: Quantity select increase
- AWRS: Quantity select decrease
- AWRS: Mode Select CCW
- AWRS: Mode Select CW
- APC: Power - OFF
- APC: Power - Stby
- APC: Power - Engage
- APC: Temp - Cold
- APC: Temp - Std
- APC: Temp - Hot
- BDHI - NAV CMPTR
- BDHI - TACAN
- BDHI - NAV PAC
- BOMB ARM - NOSE & TAIL
- BOMB ARM - OFF
- BOMB ARM - TAIL
- Function Selector: OFF
- Function Selector: ROCKETS
- Function Selector: GM UNARM
- Function Selector: SPRAY TANK
- Function Selector: LABS
- Function Selector: BOMBS & GM ARM
- Interior Lights: White Floodlight Increase
- Interior Lights: White Floodlight Decrease
- Interior Lights: Instrument Lights Increase
- Interior Lights: Instrument Lights Decrease
- Interior Lights: Console Lights Increase
- Interior Lights: Console Lights Decrease

#### Joystick

- Lock view (cycle padlock)
- Unlock view (stop padlock)
- All missiles padlock
- Threat missile padlock
- Lock terrain view
- Engine Start
- Engine Stop
- AWRS: Toggle multiplier
- AWRS: Quantity select increase
- AWRS: Quantity select decrease
- AWRS: Mode Select CCW
- AWRS: Mode Select CW
- APC: Power - OFF
- APC: Power - Stby
- APC: Power - Engage
- APC: Temp - Cold
- APC: Temp - Std
- APC: Temp - Hot
- APC: Power - STBY/OFF
- APC: Power - STBY/ENGAGE
- APC: Temp - STD/COLD
- APC: Temp - STD/HOT
- BDHI - NAV CMPTR
- BDHI - TACAN
- BDHI - NAV PAC
- BDHI - TACAN/NAV CMPTR
- BDHI - TACAN/NAV PAC
- BOMB ARM - NOSE & TAIL
- BOMB ARM - OFF
- BOMB ARM - TAIL
- BOMB ARM - OFF/NOSE & TAIL
- BOMB ARM - OFF/TAIL
- Function Selector: OFF
- Function Selector: ROCKETS
- Function Selector: GM UNARM
- Function Selector: SPRAY TANK
- Function Selector: LABS
- Function Selector: BOMBS & GM ARM
- Interior Lights: White Floodlight Increase
- Interior Lights: White Floodlight Decrease
- Interior Lights: Instrument Lights Increase
- Interior Lights: Instrument Lights Decrease
- Interior Lights: Console Lights Increase
- Interior Lights: Console Lights Decrease

#### Joystick Axis

- Lighting: Instrument
- Lighting: Console
- Lighting: White Flood
- AWRS Drop Interval

## Version 1.3 - 11 March 2019

Contributors:  (Insert your name here!)

- Heclak
- Nero
- Merker
- Plusnine
- LevelPulse
- Storm (AIM-9P Fixes)

New Features:

- Chocks now hold aircraft in place, selectable via Ground Crew Interface (Tentative). Carrier starts now possible.
- Added joystick mapping axis for inst light and console light.
- Lights inside cockpit reworked. Now red.
- RwR now integrated. Including sounds.(AN/APR-23)
- A-4E can now be launched with the catapault. (see the A4E-Community Guide for details)
- Carriers can now have TACAN and ILS. (see the A4E-Community Guide for details)
- Reworked AWRS for more accurate system simulation
- Reworked CBUs release code for more accurate simulation
- New option to change trim speed in aircraft options menu
- New implementation of the AN/ALE-29A Chaff Dispensing System.
- New mission planner options for setting options for the AN/ALE-29A programmer
- New shrike search and lock system added. Behaviour is similar to AIM-9 Sidewinders arming procedure.
- New volume control for shrike and sidewinder volume (placeholder model)
- Added carrier catapult launch sounds (cockpit-only)
- New menu music
- Completely new collision and damage model. Fixes previous damage issues.
- Wheelbrakes can now be bound to a (single) Axis.
- Improved ground handling
- Options/special/A-4E: serveral options have been added like "hide Stick" and "trimspeed"

Bug Fixes:

- Red floodlight switch no longer stuck.
- No CTD when spawning on carrier.
- Fixed canopy visibility in cockpit when open.
- CBU visibility has been fixed.
- Huffer now works on carriers.
- Standby compass bug fixed. UV mapping of backlight rotated 180 degrees.
- Fixed RAT animation when deployed
- Fixed CBU bomblet visual placement in SUU-7 dispenser
- Fixed issue where turning a knob with the scroll wheel will cause it to jump back to the beginning when it reaches the end.
- Tweaked weight of SUU-7 dispenser
- Fixed anti-collision light switch on exterior lighting panel
- Fixed TrackIR issues
- Fixed pilot size

Other Changes:

- Console and Instrument Backlighting now controlled by appropriate knobs.
- AWRS now selects appropriate ripple quantities.
- Increased Pilot Size to reflect reference imagery.
- Updated keybinding. Countermeasures release is now known as the JATO firing button. Function is the same.

Weapon Systems:

- SALVO mode will now correctly only dispense one weapon from each readied station per weapon release pulse from AWRSAWRS QTY SEL will now correctly limit the number of times the weapons are released in the RIPPLE modes.
- AWE-1(AWRS) now powered from the monitor dc bus. Master arm switch no longer turns off the AWE-1
- Weapons will no longer be released from centerline station when in STEP PAIRS or RIPPLE PAIRS
- Station of equal priority are now required for weapon release in PAIRS modes.
- CBU bomblets are now released in tubes (CBU-1/A, CBU-2/A, CBU-2/B)
- Added kneeboard page for CBU config to change the number of tubes of bomblets released per weapon pulse. (CBU-2/A, CBU-2B/A)
- Added options to set CBU config from the mission planner/editor
- Tweaked start condition of weapon system when spawning hot

Important:
You need to rebind your "Throttle Axis" and "Rudder Axis".
Read the A4E-Community Guide by heclak to avoid issues with the new carrier mechanics.
