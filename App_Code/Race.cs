using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Race
/// </summary>
public class Race
{
    protected int raceStrength { get; private set; }
    protected int raceConstitution { get; private set; }
    protected int raceDexterity { get; private set; }
    protected int raceIntelligence { get; private set; }
    protected int raceWisdom { get; private set; }
    protected int raceCharisma { get; private set; }
    protected int raceSize { get; private set; }
    protected int raceSpeed { get; private set; }


    public virtual int strength
    { get { return raceStrength; } }
    public virtual int constitution
    { get { return raceConstitution; } }
    public virtual int dexterity
    { get { return raceDexterity; } }
    public virtual int intelligence
    { get { return raceIntelligence; } }
    public virtual int wisdom
    { get { return raceWisdom; } }
    public virtual int charisma
    { get { return raceCharisma; } }
    public virtual int size
    { get { return raceSize; } }
    public virtual int speed
    { get { return raceSpeed; } }


    public Race()
    { }
    public Race(int strength, int constitution, int dexterity, int intelligence, int widsom, int charisma, int size, int attackSpeed)
    {
        raceStrength = strength;
        raceConstitution = constitution;
        raceDexterity = dexterity;
        raceIntelligence = intelligence;
        raceWisdom = wisdom;
        raceCharisma = charisma;
        raceSize = size;
        raceSpeed = attackSpeed;
    }
}
public class Human : Race
{
    public Human()
        : base(0,0,0,0,0,0,0,1)
    { }
}
public class Dwarf : Race
{
    public Dwarf()
        : base(0,2,0,0,0,-2,0,2)
    { }
}
public class Elf : Race
{
    public Elf()
        : base(0,-2,2,0,0,0,0,1)
    { }
}
public class Gnome : Race
{
    public Gnome()
        : base(-2, 2, 0, 0, 0, 0, 1,2)
    { }
}
public class HalfElf:Race{
    public HalfElf()
        : base(0, 0, 0, 0, 0, 0, 0,1)
    { }
}
public class HalfOrc:Race{
    public HalfOrc()
        : base(2, 0, 0, -2, 0, -2, 0,1)
    { }
}
public class Halfling : Race
{
    public Halfling()
        : base(-2, 0, 2, 0, 0, 0, 1,2)
    { }
}
