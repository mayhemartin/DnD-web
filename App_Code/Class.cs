using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Class
{
    protected int classAttackBonus { get; private set; }
    protected int classFortSave { get; private set; }
    protected int classRefSave { get; private set; }
    protected int classWillSave { get; private set; }
    protected int classBaseHealth { get; private set; }

    public virtual int attackBonus
    { get { return classAttackBonus; } }
    public virtual int fortSave
    { get { return classFortSave; } }
    public virtual int refSave
    { get { return classRefSave; } }
    public virtual int willSave
    { get { return classWillSave; } }
    public virtual int baseHealth
    { get { return classBaseHealth; } }

    public Class(int attackBonus, int fortSave, int refSave, int willSave,int health)
    {
        classAttackBonus = attackBonus;
        classFortSave = fortSave;
        classRefSave = refSave;
        classWillSave = willSave;
        classBaseHealth = health;
    }
}
public class Barbarian : Class
{
    public Barbarian() : base(1 , 2, 0, 0, 12) { }
}
public class Bard : Class
{
    public Bard() : base(0, 0, 2, 2, 6) { }
}
public class Cleric : Class
{
    public Cleric() : base(0, 2, 0, 2, 8) { }
}
public class Druid : Class
{
    public Druid() : base(0, 2, 0, 2,8) { }
}
public class Fighter : Class
{
    public Fighter() : base(1, 2, 0, 0, 10) { }
}
public class Monk : Class
{
    public Monk() : base(0, 2, 2, 2, 8) { }
}
public class Paladin : Class
{
    public Paladin() : base(1, 2, 0, 0, 10) { }
}
public class Ranger : Class
{
    public Ranger() : base(1, 2, 2, 0, 8) { }
}
public class Rogue : Class
{
    public Rogue() : base(0, 0, 2, 0, 6) { }
}
public class Sorcerer : Class
{
    public Sorcerer() : base(0, 0, 0, 2, 4) { }
}
public class Wizard : Class
{
    public Wizard() : base(0, 0, 0, 2, 4) { }
}