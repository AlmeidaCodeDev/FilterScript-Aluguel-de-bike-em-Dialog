/*	
	FS aluguel de bike by pedroxxx
	Insta: _carmo7_
	Discord: __pedroxxx_
	NAO RETIRAR OS CREDITOS
*/

#include <a_samp>

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define D_AluguelBike   0

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
new pickupBike;


#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" FS aluguel de bike By pedroxxx");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" By pedroxxx");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	pickupBike = CreatePickup(19131, 1, 1682.4880,-2305.5110,13.5362, 0);
    Create3DTextLabel("Aluguel de bike", -1, 1682.4880,-2305.5110,13.5362, 15.0, 0);
	return 1;
}

public OnGameModeExit()
{
	DestroyPickup(pickupBike);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{

	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(pickupid == pickupBike)
    {
        ShowPlayerDialog(playerid, D_AluguelBike, DIALOG_STYLE_TABLIST, "Aluguel de bike", "Bmx\t100\nbike\t250\nMountain Bike\t500", "Alugar", "Cancelar");
    }
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == D_AluguelBike)
    {
        new bike, Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, Float:x, Float:y, Float:z);
        if(response)
        {
            switch(listitem)
            {
                case 0:
                {
                    if(GetPlayerMoney(playerid) < 100)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike.");
                    GivePlayerMoney(playerid, -100);
                    bike = CreateVehicle(481, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0);
                    PutPlayerInVehicle(playerid, bike, 0);
                }
                case 1:
                {
                    if(GetPlayerMoney(playerid) < 250)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike.");
                    GivePlayerMoney(playerid, -250);
                    bike = CreateVehicle(509, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0);
                    PutPlayerInVehicle(playerid, bike, 0);
                }
                case 2:
                {
                    if(GetPlayerMoney(playerid) < 500)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike.");
                    GivePlayerMoney(playerid, -500);
                    bike = CreateVehicle(510, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0);
                    PutPlayerInVehicle(playerid, bike, 0);
                }
            }
        }
        if(!response) return 1;
    }
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
