using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DnD : System.Web.UI.Page
{
    List<Race> races = new List<Race>();
    List<Class> classes = new List<Class>();
    List<Armor> armors = new List<Armor>();
    List<Weapon> weapons = new List<Weapon>();
    static Race selectedRace = null;
    static Class selectedClass = null;
    static Armor selectedArmor = null;
    static Weapon selectedWeapon = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        updateStats();
        if (!IsPostBack)
        {
            Session["recent"] = "top";
            txtOption1.Text = Convert.ToString(Dice.getBaseStat());
            txtOption2.Text = Convert.ToString(Dice.getBaseStat());
            txtOption3.Text = Convert.ToString(Dice.getBaseStat());
            txtOption4.Text = Convert.ToString(Dice.getBaseStat());
            txtOption5.Text = Convert.ToString(Dice.getBaseStat());
            txtOption6.Text = Convert.ToString(Dice.getBaseStat());
        }
        //obtain all races for stat calculations
        races.Add(new Dwarf());
        races.Add(new Elf());
        races.Add(new Gnome());
        races.Add(new HalfElf());
        races.Add(new HalfOrc());
        races.Add(new Halfling());
        races.Add(new Human());
        if (selectedRace == null)
            selectedRace = races[0];

        //obtain all classes for stat calculations
        classes.Add(new Barbarian());
        classes.Add(new Bard());
        classes.Add(new Cleric());
        classes.Add(new Druid());
        classes.Add(new Fighter());
        classes.Add(new Monk());
        classes.Add(new Paladin());
        classes.Add(new Ranger());
        classes.Add(new Rogue());
        classes.Add(new Sorcerer());
        classes.Add(new Wizard());
        if (selectedClass == null)
            selectedClass = classes[0];

        if (selectedClass != null)
        {
            lblFort.Text = Convert.ToString(selectedClass.fortSave);
            lblRef.Text = Convert.ToString(selectedClass.refSave);
            lblWill.Text = Convert.ToString(selectedClass.willSave);
        }

        //obtain all armor for stat calculations
        armors.Add(new Padded());
        armors.Add(new Leather());
        armors.Add(new ChainShirt());
        armors.Add(new ScaleMail());
        armors.Add(new ChainMail());
        armors.Add(new BreastPlate());
        armors.Add(new SplintMail());
        armors.Add(new BandedMail());
        armors.Add(new HalfPlate());
        armors.Add(new FullPlate());
        if(selectedArmor == null)
            selectedArmor = armors[6];

        //obtain all weapons for stat calculations
        weapons.Add(new Dagger());
        weapons.Add(new Mace());
        weapons.Add(new Quarterstaff());
        weapons.Add(new Crossbow());
        weapons.Add(new Shortsword());
        weapons.Add(new Longsword());
        weapons.Add(new Battleaxe());
        weapons.Add(new Greataxe());
        weapons.Add(new Falchion());
        weapons.Add(new Longbow());
        weapons.Add(new Kama());
        weapons.Add(new Waraxe());
        weapons.Add(new Urgosh());
        weapons.Add(new Sickle());
        weapons.Add(new Pick());
        weapons.Add(new Rapier());
        weapons.Add(new Warhammer());
        weapons.Add(new Shortbow());
        weapons.Add(new Bolas());
        weapons.Add(new Javelin());
        if (selectedWeapon == null)
            selectedWeapon = weapons[0];

        //debug.Text = Convert.ToString(selectedWeapon.category);

        
    }
    public void updateStats()
    {
        //stats
        updateStrength();
        updateConst();
        updateDext();
        updateInt();
        updateWis();
        updateCha();

        //modifiers
        lblStrMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblStrength.Text)));
        lblConMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblConst.Text)));
        lblDexMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblDext.Text)));
        lblIntMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblInt.Text)));
        lblWisMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblWis.Text)));
        lblChaMod.Text = Convert.ToString(modCalc(Convert.ToInt32(lblCha.Text)));

        //saving throws
        updateFortSave();
        updateRefSave();
        updateWillSave();

        //Armor Class
        updateAC();

        //calculate health
        updateHealth();

        //calculate attack speed
        updateSpeed();

        //calculate attack bonus
        updateAttackBonus();
    }
    public void updateStrength()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(strength.Text) == 0)
                lblStrength.Text = Convert.ToString(selectedRace.strength);

            else
                lblStrength.Text = Convert.ToString(Convert.ToInt32(strength.Text) + selectedRace.strength);

        }
        else lblStrength.Text = strength.Text;
    }
    public void updateConst()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(constitution.Text) == 0)
                lblConst.Text = Convert.ToString(selectedRace.constitution);

            else
                lblConst.Text = Convert.ToString(Convert.ToInt32(constitution.Text) + selectedRace.constitution);

        }
        else lblConst.Text = constitution.Text;
    }
    public void updateDext()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(dexterity.Text) == 0)
                lblDext.Text = Convert.ToString(selectedRace.dexterity);

            else
                lblDext.Text = Convert.ToString(Convert.ToInt32(dexterity.Text) + selectedRace.dexterity);

        }
        else lblDext.Text = dexterity.Text;
    }
    public void updateInt()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(intelligence.Text) == 0)
                lblInt.Text = Convert.ToString(selectedRace.intelligence);

            else
                lblInt.Text = Convert.ToString(Convert.ToInt32(intelligence.Text) + selectedRace.intelligence);

        }
        else lblInt.Text = intelligence.Text;
    }
    public void updateWis()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(wisdom.Text) == 0)
                lblWis.Text = Convert.ToString(selectedRace.wisdom);

            else
                lblWis.Text = Convert.ToString(Convert.ToInt32(wisdom.Text) + selectedRace.wisdom);

        }
        else lblWis.Text = wisdom.Text;
    }
    public void updateCha()
    {
        if (selectedRace != null)
        {
            if (Convert.ToInt32(charisma.Text) == 0)
                lblCha.Text = Convert.ToString(selectedRace.charisma);

            else
                lblCha.Text = Convert.ToString(Convert.ToInt32(charisma.Text) + selectedRace.charisma);

        }
        else lblCha.Text = charisma.Text;
    }
    public int modCalc(int stat)
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
    public void updateFortSave()
    {
        if (selectedClass != null)
            lblFort.Text = Convert.ToString(Convert.ToInt32(lblConMod.Text)+selectedClass.fortSave);
    }
    public void updateRefSave()
    {
        if(selectedClass != null)
            lblRef.Text = Convert.ToString(Convert.ToInt32(lblDexMod.Text) + selectedClass.refSave);
    }
    public void updateWillSave()
    {
        if(selectedClass != null)
            lblWill.Text = Convert.ToString(Convert.ToInt32(lblWisMod.Text) + selectedClass.willSave);
    }
    public void updateAC()
    {
        //debug2.Text = "";

        int ac = 10;
        //debug2.Text += "base : "+Convert.ToString(10)+"\n";

        if (selectedRace != null)
        {
            ac += selectedRace.size;
            //debug2.Text += "size: +" + Convert.ToString(selectedRace.size) + "\n";
        }
            

        if (selectedArmor != null)
        {
            if (Convert.ToInt32(lblDexMod.Text) > selectedArmor.dexterityCap)
            {
                //debug2.Text += "dexCap : +"+Convert.ToString(selectedArmor.dexterityCap)+"\n";
                ac += selectedArmor.dexterityCap;
            }


            else
            {
                //debug2.Text += "dex1: +"+lblDexMod.Text+"\n";
                ac += Convert.ToInt32(lblDexMod.Text);
            } 

            ac += selectedArmor.ac;
            //debug2.Text += "ac: +"+Convert.ToString(selectedArmor.ac);
        }
        else
        {
            ac += Convert.ToInt32(lblDexMod.Text);
            //debug2.Text += " dex2: +"+lblDexMod.Text+"\n";
        }

        if (ac < 0)
        {
            lblAC.Text = Convert.ToString(0);
        }
            
        else lblAC.Text = Convert.ToString(ac);
    }
    public void updateHealth()
    {
        if (selectedClass != null)
        {
            lblHP.Text = Convert.ToString(selectedClass.baseHealth + Convert.ToInt32(lblConMod.Text));
        }
        else lblHP.Text = "0";
    }
    public void updateSpeed()
    {
        int speed=0;
        if (selectedRace != null)
        {
            speed += selectedRace.speed;
        }


        if (selectedArmor != null)
        {
            if(!(selectedRace is Dwarf))
                speed += selectedArmor.speed;
        }
            

        lblSpeed.Text = Convert.ToString(speed);
    }
    public void updateAttackBonus()
    {
        //debug.Text = "";
        int bonus=0;

        if (selectedClass != null)
        {
            bonus += selectedClass.attackBonus;
            //debug.Text += "class: "+Convert.ToString(selectedClass.attackBonus)+"\n";
        }

        //debug.Text += "ab: "+Convert.ToString(selectedClass.attackBonus);
        //debug.Text += "weapdmg: "+Convert.ToString(selectedWeapon.damage);
        if (selectedWeapon != null)
        {
            if (selectedWeapon.category == Weapon.cat.Range)
            {
                //debug.Text += "set dex bonus\n";
                bonus += Convert.ToInt32(lblDexMod.Text);
            }


            else
            {
                //debug.Text += "set str bonus\n";
                bonus += Convert.ToInt32(lblStrMod.Text);
            } 
        }

        

        if (selectedRace != null)
        {
            bonus += selectedRace.size;
            //debug.Text += "race: " + Convert.ToString(selectedRace.size) + "\n";
        }
            

        lblAttack.Text = Convert.ToString(bonus);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        updateStats();
    }
    protected void ddlRace_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedRace = races[ddlRace.SelectedIndex];
        Session["recent"] = "race";
        updateStats();
    }
    protected void ddlDebug_SelectedIndexChanged(object sender, EventArgs e)
    {
        //do not change, throws into loop
        Session["recent"] = "top";
        control.Text = "0";
    }
    protected void dllClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedClass = classes[dllClass.SelectedIndex];
        Session["recent"] = "class";
        updateStats();
    }
    protected void ddlArmorCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        //debug3.Text = Convert.ToString(ddlArmorCat.SelectedValue);
        switch (ddlArmorCat.SelectedValue)
        {
            case "Light": selectedArmor = armors[0];
                          ddlArmor.DataBind();
                          ddlArmor_SelectedIndexChanged(this, EventArgs.Empty);
                break;
            case "Medium": selectedArmor = armors[3];
                           ddlArmor.DataBind();
                           ddlArmor_SelectedIndexChanged(this, EventArgs.Empty);
                break;
            case "Heavy": selectedArmor = armors[6];
                          ddlArmor.DataBind();
                          ddlArmor_SelectedIndexChanged(this, EventArgs.Empty);
                break;
        }
        Session["recent"] = "armor";
        updateStats();
    }
    protected void ddlWeaponCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        //debug.Text = "update\n";
        //debug.Text += "index: "+Convert.ToString(ddlWeaponCat.SelectedIndex)+"\n";
        switch (ddlWeaponCat.SelectedIndex)
        {
            case 0: selectedWeapon = weapons[0];
                break;
            case 1: selectedWeapon = weapons[1];
                break;
            case 2: selectedWeapon = weapons[3];
                break;
            case 3: selectedWeapon = weapons[2];
                break;
        }
        Session["recent"] = "weapon";
        updateStats();
    }
    protected void ddlArmor_SelectedIndexChanged(object sender, EventArgs e)
    {
        //debug2.Text = Convert.ToString(ddlArmor.SelectedValue);
        switch (ddlArmor.SelectedValue)
        {
            case "Padded": selectedArmor = armors[0];
                break;
            case "Leather": selectedArmor = armors[1];
                break;
            case "Chain Shirt": selectedArmor = armors[2];
                break;
            case "Scale Mail": selectedArmor = armors[3];
                break;
            case "Chainmail": selectedArmor = armors[4];
                break;
            case "Breastplate": selectedArmor = armors[5];
                break;
            case "Splint Mail": selectedArmor = armors[6];
                break;
            case "Banded Mail": selectedArmor = armors[7];
                break;
            case "Halfplate": selectedArmor = armors[8];
                break;
            case "Fullplate": selectedArmor = armors[9];
                break;
        }
        Session["recent"] = "armor";
        updateStats();
    }
    protected void ddlWeapon_SelectedIndexChanged(object sender, EventArgs e)
    {
        //debug.Text = Convert.ToString(ddlWeapon.SelectedValue);
        switch (ddlArmor.SelectedValue)
        {
            case "Dagger": selectedWeapon = weapons[0];
                break;
            case "Mace": selectedWeapon = weapons[1];
                break;
            case "Quarterstaff": selectedWeapon = weapons[2];
                break;
            case "Crossbow": selectedWeapon = weapons[3];
                break;
            case "Shortsword": selectedWeapon = weapons[4];
                break;
            case "Longsword": selectedWeapon = weapons[5];
                break;
            case "Battleaxe": selectedWeapon = weapons[6];
                break;
            case "Greataxe": selectedWeapon = weapons[7];
                break;
            case "Falchion": selectedWeapon = weapons[8];
                break;
            case "Longbow": selectedWeapon = weapons[9];
                break;
            case "Kama": selectedWeapon = weapons[10];
                break;
            case "Waraxe": selectedWeapon = weapons[11];
                break;
            case "Urgosh": selectedWeapon = weapons[12];
                break;
            case "Sickle": selectedWeapon = weapons[13];
                break;
            case "Pick": selectedWeapon = weapons[14];
                break;
            case "Rapier": selectedWeapon = weapons[15];
                break;
            case "Warhammer": selectedWeapon = weapons[16];
                break;
            case "Shortbow": selectedWeapon = weapons[17];
                break;
            case "Bolas": selectedWeapon = weapons[18];
                break;
            case "Javelin": selectedWeapon = weapons[19];
                break;
        }
        //debug.Text = Convert.ToString(selectedWeapon.category)+"   lbs.";
        Session["recent"] = "weapon";
        updateStats();
    }
    protected void Battle_Click(object sender, EventArgs e)
    {
        Character newCharacter = new Character(txtName.Text, selectedRace, selectedClass,
            selectedArmor, selectedWeapon, Convert.ToInt32(strength.Text),
            Convert.ToInt32(constitution.Text), Convert.ToInt32(dexterity.Text), Convert.ToInt32(intelligence.Text),
            Convert.ToInt32(wisdom.Text), Convert.ToInt32(charisma.Text));

        Session["character"] = newCharacter;
        Response.Redirect("Battle.aspx");
    }
}

