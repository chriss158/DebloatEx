.class public Lcom/android/nfc/cardemulation/LCardEmulationPopupList;
.super Ljava/lang/Object;
.source "LCardEmulationPopupList.java"


# static fields
.field private static final ACTION_NFC_EXCEED_AUTO_POPUP:Ljava/lang/String; = "com.lge.nfc.action.NFC_EXCEED_AUTO_POPUP"

.field private static final ACTION_NFC_EXCEED_POPUP_RESULT:Ljava/lang/String; = "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

.field private static final DBG:Z

.field private static final EXTRA_SEND_HCE_SETTING:Ljava/lang/String; = "com.lge.nfc.extra.SEND_HCE_SETTING"

.field public static final PREF_HCE_POPUP:Ljava/lang/String; = "hcepopup"

.field public static final PREF_HCE_POPUP_CONFIRM:Ljava/lang/String; = "hceconfirm"

.field private static final TAG:Ljava/lang/String; = "LCardEmulationPopupList"


# instance fields
.field protected final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field mContext:Landroid/content/Context;

.field mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field protected final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->DBG:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 136
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationPopupList;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.nfc.action.NFC_EXCEED_AUTO_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public applyHostCardEmulationAutomaticSwitchingPopup()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-eqz v6, :cond_9

    .line 133
    :cond_8
    :goto_8
    return v4

    .line 108
    :cond_9
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_8

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.nfc.action.NFC_EXCEED_AUTO_POPUP"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "settingResultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.lge.nfc.action.NFC_EXCEED_AUTO_POPUP"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "ignoreResultIntent":Landroid/content/Intent;
    const-string v6, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v6, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    new-instance v6, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 117
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 118
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f080054

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 119
    const v7, 0x104000a

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 120
    invoke-virtual {v6, v0, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 121
    const v7, 0x7f080053

    invoke-virtual {v6, v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 122
    invoke-virtual {v6, v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v6

    .line 123
    invoke-virtual {v6, v0, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 126
    .local v1, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v2, "popupIntent":Landroid/content/Intent;
    const-string v4, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const-string v4, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 133
    goto :goto_8
.end method

.method public applyHostCardEmulationExceedAidTablePopup(IZ)Z
    .registers 15
    .param p1, "defaultRoute"    # I
    .param p2, "isSettingButton"    # Z

    .prologue
    const v11, 0x7f080038

    const v10, 0x104000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    if-nez v7, :cond_d

    .line 100
    :goto_c
    return v5

    .line 46
    :cond_d
    sget-boolean v7, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->DBG:Z

    const-string v8, "LCardEmulationPopupList"

    const-string v9, "applyHostCardEmulationExceedAidTablePopup"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v4, "settingResultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "ignoreResultIntent":Landroid/content/Intent;
    const-string v7, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v7, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string v2, ""

    .line 55
    .local v2, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_100

    .line 72
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f08004f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_3c
    :goto_3c
    if-eqz p2, :cond_db

    .line 76
    new-instance v7, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 77
    iget-object v8, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 79
    invoke-virtual {v7, v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 80
    invoke-virtual {v7, v0, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 81
    const v8, 0x7f080046

    invoke-virtual {v7, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 82
    invoke-virtual {v7, v4, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->negativeButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 83
    invoke-virtual {v7, v0, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v6}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 94
    .local v1, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    :goto_70
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v3, "popupIntent":Landroid/content/Intent;
    const-string v5, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    const-string v5, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 100
    goto/16 :goto_c

    .line 57
    .end local v1    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    .end local v3    # "popupIntent":Landroid/content/Intent;
    :pswitch_91
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v8, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v7, v8, :cond_c8

    .line 58
    const-string v7, "KR"

    sget-object v8, Lcom/lge/os/Build$CA_TARGET;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 59
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f080050

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    goto :goto_3c

    .line 61
    :cond_ad
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-nez v7, :cond_bd

    .line 62
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f080051

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    goto :goto_3c

    .line 65
    :cond_bd
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f08004d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    goto/16 :goto_3c

    :cond_c8
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v7, v7, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v8, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v7, v8, :cond_3c

    .line 68
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    const v8, 0x7f08004e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    goto/16 :goto_3c

    .line 86
    :cond_db
    new-instance v7, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v7}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 87
    iget-object v8, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 88
    invoke-virtual {v7, v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 89
    invoke-virtual {v7, v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 90
    invoke-virtual {v7, v0, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v7

    .line 91
    invoke-virtual {v7, v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v1

    .line 86
    .restart local v1    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    goto/16 :goto_70

    .line 55
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_91
    .end packed-switch
.end method
