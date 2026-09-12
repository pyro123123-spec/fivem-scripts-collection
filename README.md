# FiveM Scripts Collection

Eine Sammlung von 20 nützlichen und praktischen FiveM-Scripts für Euren Server.

## Scripts Übersicht

### 1. Player Info
- Befehl: `/playerinfo`
- Zeigt Position und Spieler-ID an

### 2. Teleport
- Befehl: `/tp [x] [y] [z]`
- Teleportiert den Spieler zu angegebenen Koordinaten

### 3. Vehicle Spawn
- Befehl: `/car [model]`
- Spawnt ein Fahrzeug mit angegebenem Model

### 4. Godmode
- Befehl: `/godmode`
- Aktiviert/Deaktiviert Godmode (Unzerstörbarkeit)

### 5. Money System
- Befehl: `/givemoney [player_id] [amount]`
- Befehl: `/checkmoney`
- Geld-Management System

### 6. NPC Spawn
- Befehl: `/npc [model]`
- Spawnt einen NPC an deiner Position

### 7. Job System
- Befehl: `/setjob [player_id] [job_name]`
- Befehl: `/getjob`
- Verwaltung von Spieler-Jobs

### 8. Inventory System
- Befehl: `/additem [itemname] [amount]`
- Einfaches Inventar-System

### 9. Health & Food
- Befehl: `/heal` - Heile dich selbst
- Befehl: `/food` - Esse etwas

### 10. Weapon System
- Befehl: `/giveweapon [model]`
- Befehl: `/removeweapon`
- Waffen-Verwaltung

### 11. Admin Panel
- Befehl: `/admin`
- Befehl: `/help`
- Einfaches Admin-Panel mit Befehle-Übersicht

### 12. Chat System
- Befehl: `/announce [message]`
- Befehl: `/pm [player_id] [message]`
- Erweitertes Chat-System

### 13. Animation System
- Befehl: `/anim [dict] [name]`
- Spiele Animationen ab

### 14. Death System
- Befehl: `/revive`
- Wiederbelebungs-System

### 15. Weather System
- Befehl: `/setweather [type]`
- Ändert das Wetter auf dem Server

### 16. Time System
- Befehl: `/settime [hour] [minute]`
- Stelle die Zeit auf dem Server ein

### 17. Speed Boost
- Befehl: `/speedboost`
- Erhöhe die Fahrzeug-Geschwindigkeit

### 18. Anti-Lag System
- Befehl: `/antilag`
- Reduziere Grafik-Last

### 19. AFK System
- Befehl: `/afkcheck`
- Erkennt AFK-Spieler

### 20. Custom Commands
- Befehl: `/dance`, `/sit`
- Beispiel für eigene benutzerdefinierte Befehle

## Installation

1. Jeden Script-Ordner in deinen `resources` Ordner kopieren
2. Im `server.cfg` hinzufügen:
```
ensure player-info
ensure teleport
ensure vehicle-spawn
... etc
```

## Lizenz

Frei verwendbar für private und öffentliche Server
