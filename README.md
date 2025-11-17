# 🚲 FilterScript aluguel de bike em dialog.

### Você pode usar como esta (Em FilterScript) ou pode adaptar na sua gamemode.

### Primeiro vá no topo da sua gamemode e coloque essas 2 linhas de codigo.
```
#define D_AluguelBike   0 // Define a dialog 
new pickupBike; // variavel da pickup
```
### Segundo coloque esse codigo em public OnGameModeInit()
```
  pickupBike = CreatePickup(19131, 1, 1682.4880,-2305.5110,13.5362, 0); // Criara a pickup quando a Gamemode for iniciada, voce pode alterar a posiçao x, y, z da pickup e do texto 3d
  Create3DTextLabel("Aluguel de bike", -1, 1682.4880,-2305.5110,13.5362, 15.0, 0); // Criara o texto 3d na mesma posiçao da pickup
```
### Terceiro coloque esse codigo em public OnGameModeExit()
```
	DestroyPickup(pickupBike); // isso ira destruir a pickup quando a Gamemode for desligada
```
### Quarto coloque esse codigo em public OnPlayerPickUpPickup(playerid, pickupid)
```
    if(pickupid == pickupBike) // quando o player passar por cima da pickup ira acionar a dialog
    {
        ShowPlayerDialog(playerid, D_AluguelBike, DIALOG_STYLE_TABLIST, "Aluguel de bike", "Bmx\t100\nbike\t250\nMountain Bike\t500", "Alugar", "Cancelar"); // dialog de alugar as bikes
    }
```
### Por ultimo coloque esse codigo em public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
```
	if(dialogid == D_AluguelBike)
    {
        new bike, Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, Float:x, Float:y, Float:z); // pega a posicao do player
        if(response)
        {
            switch(listitem)
            {
                case 0:
                {
                    if(GetPlayerMoney(playerid) < 100)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike."); // verifica se o player tem o dinheiro suficiente
                    GivePlayerMoney(playerid, -100); // tira 100 R$ do player
                    bike = CreateVehicle(481, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0); // criar a bmx na posicao do player, adiciona 1 no x, y, z do player para nao bugar
                    PutPlayerInVehicle(playerid, bike, 0); // coloca o player no assento do motorista
                }
                case 1:
                {
                    if(GetPlayerMoney(playerid) < 250)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike."); // verifica se o player tem o dinheiro suficiente
                    GivePlayerMoney(playerid, -250); // tira 250 R$ do player
                    bike = CreateVehicle(509, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0); // criar a bike na posicao do player, adiciona 1 no x, y, z do player para nao bugar
                    PutPlayerInVehicle(playerid, bike, 0); // coloca o player no assento do motorista
                }
                case 2:
                {
                    if(GetPlayerMoney(playerid) < 500)return SendClientMessage(playerid, 0xFF0000FF, "SERVER: Voce nao tem dinheiro suficiente para comprar esta Bike."); // verifica se o player tem o dinheiro suficiente
                    GivePlayerMoney(playerid, -500); // tira 500 R$ do player
                    bike = CreateVehicle(510, x + 1.0, y + 1.0, z + 1.0, 0, 0, 0, 0, 0); // criar a Mountain bike na posicao do player, adiciona 1 no x, y, z do player para nao bugar
                    PutPlayerInVehicle(playerid, bike, 0); // coloca o player no assento do motorista
                }
            }
        }
        if(!response) return 1; // se o player clicar em cancelar ira fechar a dialog
    }
```

## Ilustraçoes de como ira ficar in game.

<img width="1440" height="900" alt="Captura de Tela (223)" src="https://github.com/user-attachments/assets/d506c9ac-a6ec-4ace-abb0-e700e0b8a281" />
<img width="1440" height="900" alt="Captura de Tela (224)" src="https://github.com/user-attachments/assets/87cae9c9-da83-4103-a30a-220141d8b13e" />

# Creditos
### Eu!!
