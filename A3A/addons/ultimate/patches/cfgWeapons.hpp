class TFAR_SCR536: ItemRadio 
{
    author = AUTHOR;
    displayName = "SCR-536";
    descriptionShort = "SCR-536";
    scope = 2;
    scopeCurator = 2;
    model = QPATHTOFOLDER(patches\data\scr536);
    picture = QPATHTOFOLDER(patches\data\scr536_ca.paa);
    tf_prototype = 0;
    tf_range = 1000;
    tf_dialog = "anprc152_radio_dialog";
    tf_encryptionCode = "tf_west_radio_code";
    tf_dialogUpdate = "call TFAR_fnc_updateSWDialogToChannel;";
    tf_subtype = "digital";
    tf_parent = "TFAR_SCR536";
    tf_additional_channel = 1;
};

TF_RADIO_IDS(TFAR_SCR536,SCR536)