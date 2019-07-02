Nodelocked
	Entry point: 
		./demo --node_lock --slot_id
	Prerequ:
		1 account, 1 NL provisionned => TBD
	Scenario: 
		Live account creation => TBD
		AWS F1 4xlarge, 1 NL license, test 
		Check DRM portal (1 NL available)
		run 1rst board ok
		Check DRM portal (0 NL available)
		2nd board ko 
		rerun 1rst board => TBD
	Application Content:
		Display activation status before and after MSM creation)
	Potential Issues:
		Reset account before live demo

Metered
	Entry point: ./demo --metered --slot_id --n_coin
	Prerequ:
		Account created previously
		set high coin limit
	Scenario: 
		AWS F1 4xlarge 
		Check DRM portal (0 coins)
		run board with N coins generated, stop_session
		Check DRM portal (N coins used)
		rerun on-demand
	Application Content:
		Display activation status before and after MSM creation)
	Potential Issues:
		Remove previous session (if possible)

Floating
	Entry point: ./demo --floating --slot_id
	Prerequ:
		Account created previously
		set floating licenses to 1
	Scenario: 
		(set floating licenses to 0)
		AWS F1 4xlarge 
		Run two terminals with app
		first slot get the license
		second display "waiting license" in a loop
		set floating to 2 or kill first => the wait loop is 
		rerun on-demand
	Application Content:
		Display status in inifinite loop
		How to kill ?
	Potential Issues:



Opened Questions:
Can we use the same account for all 3 tests (NL, metered, floating) ?
Can we have the administration portal to enable (live) the NL number and floating number ?
If not, need two accounts ...
Run on DEV or PROD ??
Set license duration ?
Does floating mode is displayed on Customer portal ?

Dependencies
https://drmportal.accelize.com
all modes
floating mode support
create mail demo@accelize.com
Administration portal (if possible)

