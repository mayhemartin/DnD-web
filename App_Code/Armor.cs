using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Armor
/// </summary>
public class Armor
{
    protected int armorClass { get; private set; }
    protected int armorDexCap { get; private set; }
    protected int armorSpeedCap { get; private set; }

    public virtual int ac
    { get { return armorClass; } }
    public virtual int dexterityCap
    { get { return armorDexCap; } }
    public virtual int speed
    { get { return armorSpeedCap; } }

    public Armor(int aac, int adex, int aspeed)
    {
        armorClass = aac;
        armorDexCap = adex;
        armorSpeedCap = aspeed;
    }
}
public class Padded : Armor
{
    public Padded() : base(1, 8, 0) { }
}
public class Leather : Armor
{
    public Leather() : base(2, 6, 0) { }
}
public class ChainShirt : Armor
{
    public ChainShirt() : base(4, 4, 0) { }
}
public class ScaleMail : Armor
{
    public ScaleMail() : base(4, 3, 1) { }
}
public class ChainMail : Armor
{
    public ChainMail() : base(5, 2, 1) { }
}
public class BreastPlate : Armor
{
    public BreastPlate() : base(5, 3, 1) { }
}
public class SplintMail : Armor
{
    public SplintMail() : base(6, 0, 2) { }
}
public class BandedMail : Armor
{
    public BandedMail() : base(6, 1, 2) { }
}
public class HalfPlate : Armor
{
    public HalfPlate() : base(7, 0, 2) { }
}
public class FullPlate : Armor
{
    public FullPlate() : base(8, 1, 2) { }
}