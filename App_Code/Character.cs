using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Character
{
    protected string userName { get; private set; }
    protected string recordName { get; private set; }
    protected int userStrength { get; private set; }
    protected int userConst { get; private set; }
    protected int userDext { get; private set; }
    protected int userInt { get; private set; }
    protected int userWis { get; private set; }
    protected int userCha { get; private set; }

    protected int userAC { get; private set; }
    protected int userAB { get; private set; }
    public int health { get; set; }
    protected int userSpeed { get; private set; }
    protected int userInitiative {get; private set;}
    protected int userDamageBonus { get; private set; }

    protected Race userRace { get; private set; }
    protected Class userClass { get; private set; }
    protected Armor userArmor { get; private set; }
    protected Weapon userWeapon { get; private set; }

    public virtual string name
    { get { return userName; } }
    public virtual string who
    { get { return recordName; } }
    public virtual int strength
    { get { return userStrength; } }
    public virtual int constitution
    { get { return userConst; } }
    public virtual int dexterity
    { get { return userDext; } }
    public virtual int intelligence
    { get { return userInt; } }
    public virtual int wisdom
    { get { return userWis; } }
    public virtual int charisma
    { get { return userCha; } }
    public virtual int initiative
    { get { return userInitiative; } }
    public virtual int damageBonus
    { get { return userDamageBonus; } }

    public virtual Race race
    { get { return userRace; } }
    public virtual Class charClass
    { get { return userClass; } }
    public virtual Armor armor
    { get { return userArmor; } }
    public virtual Weapon weapon
    { get { return userWeapon; } }

    public virtual int AC
    { get { return userAC; } }
    public virtual int AB
    { get { return userAB; } }
    //public virtual int health
    //{ get { return userHP; } }
    public virtual int speed
    { get { return userSpeed; } }

    private int modCalc(int stat)
    {
        int mod;
        switch (stat)
        {
            case 21:
            case 20: mod = 5;
                break;
            case 19:
            case 18: mod = 4;
                break;
            case 17:
            case 16: mod = 3;
                break;
            case 15:
            case 14: mod = 2;
                break;
            case 13:
            case 12: mod = 1;
                break;
            default: mod = 0;
                break;
        }

        return mod;
    }
    private int calcHP()
    {
        int health = userClass.baseHealth;
        health += modCalc(userDext);
        return health;
    }
    private int calcSpeed()
    {
        int speed = userRace.speed;

        if (!(userRace is Dwarf))
            speed += userArmor.speed;

        return speed;
    }
    private int calcAC()
    {
        int ac = 10;

        ac += userRace.size;

        if (modCalc(userDext) > userArmor.dexterityCap)
            ac += userArmor.dexterityCap;

        else ac += modCalc(userDext);

        ac += userArmor.ac;

        return ac;
    }
    private int calcAB()
    {
        int bonus = userClass.attackBonus;

        if (userWeapon.category == Weapon.cat.Range)
            bonus += modCalc(userDext);

        else bonus += modCalc(userStrength);

        bonus += userRace.size;

        return bonus;
    }

    public Character()
    {
        userName = "Destroyer of Users - 2.0";
        userStrength = Dice.getBaseStat();
        userConst = Dice.getBaseStat();
        userDext = Dice.getBaseStat();
        userInt = Dice.getBaseStat();
        userWis = Dice.getBaseStat();
        userCha = Dice.getBaseStat();

        List<Race> tempRace = new List<Race>();
        tempRace.Add(new Dwarf());
        tempRace.Add(new Elf());
        tempRace.Add(new Gnome());
        tempRace.Add(new HalfElf());
        tempRace.Add(new HalfOrc());
        tempRace.Add(new Halfling());
        tempRace.Add(new Human());
        userRace = tempRace[Dice.random(1, tempRace.Count - 1)];

        List<Class> tempClass = new List<Class>();
        tempClass.Add(new Barbarian());
        tempClass.Add(new Bard());
        tempClass.Add(new Cleric());
        tempClass.Add(new Druid());
        tempClass.Add(new Fighter());
        tempClass.Add(new Monk());
        tempClass.Add(new Paladin());
        tempClass.Add(new Ranger());
        tempClass.Add(new Rogue());
        tempClass.Add(new Sorcerer());
        tempClass.Add(new Wizard());
        userClass = tempClass[Dice.random(1, tempClass.Count - 1)];

        List<Armor> tempArmor = new List<Armor>();
        tempArmor.Add(new Padded());
        tempArmor.Add(new Leather());
        tempArmor.Add(new ChainShirt());
        tempArmor.Add(new ScaleMail());
        tempArmor.Add(new ChainMail());
        tempArmor.Add(new BreastPlate());
        tempArmor.Add(new SplintMail());
        tempArmor.Add(new BandedMail());
        tempArmor.Add(new HalfPlate());
        tempArmor.Add(new FullPlate());
        userArmor = tempArmor[Dice.random(1, tempArmor.Count - 1)];

        List<Weapon> tempWeapon = new List<Weapon>();
        tempWeapon.Add(new Dagger());
        tempWeapon.Add(new Mace());
        tempWeapon.Add(new Quarterstaff());
        tempWeapon.Add(new Crossbow());
        tempWeapon.Add(new Shortsword());
        tempWeapon.Add(new Longsword());
        tempWeapon.Add(new Battleaxe());
        tempWeapon.Add(new Falchion());
        tempWeapon.Add(new Longbow());
        tempWeapon.Add(new Kama());
        tempWeapon.Add(new Waraxe());
        tempWeapon.Add(new Urgosh());
        tempWeapon.Add(new Sickle());
        tempWeapon.Add(new Pick());
        tempWeapon.Add(new Rapier());
        tempWeapon.Add(new Warhammer());
        tempWeapon.Add(new Shortbow());
        tempWeapon.Add(new Bolas());
        tempWeapon.Add(new Javelin());
        userWeapon = tempWeapon[Dice.random(1, tempWeapon.Count - 1)];

        userSpeed = calcSpeed();
        userAC = calcAC();
        userAB = calcAB();
        health = calcHP();

        userDamageBonus = modCalc(userStrength);

        recordName = "Computer ";
    }
	public Character(string username, Race a_race, Class a_class, Armor a_armor, Weapon a_weapon, int strength, int constitution, int dexterity, int intelligence, int wisdom, int charisma)
	{
        userName = username;
        userStrength = strength;
        userConst = constitution;
        userDext = dexterity;
        userInt = intelligence;
        userWis = wisdom;
        userCha = charisma;
        userRace = a_race;
        userClass = a_class;
        userArmor = a_armor;
        userWeapon = a_weapon;

        userSpeed = calcSpeed();
        userAC = calcAC();
        userAB = calcAB();
        health = calcHP();

        userDamageBonus = modCalc(userStrength);

        recordName = "Human ";
	}
}