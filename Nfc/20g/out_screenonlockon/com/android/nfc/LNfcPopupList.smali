.class public Lcom/android/nfc/LNfcPopupList;
.super Ljava/lang/Object;
.source "LNfcPopupList.java"


# static fields
.field private static final ACTION_NFC_ANTENNA_POPUP_RESULT:Ljava/lang/String; = "com.lge.nfc.action.NFC_ANTENNA_POPUP_RESULT"

.field private static final DBG:Z

.field private static final EXTRA_CANCEL:Ljava/lang/String; = "cancel"

.field private static final NFC_ANTENNA_POPUP_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PREFS_ANTENNA_POPUP_DEFAULTCHECK:Ljava/lang/String; = "antennadefaultcheck"

.field private static final PREFS_ANTENNA_POPUP_ENABLE:Ljava/lang/String; = "antennapopup"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupList"


# instance fields
.field protected final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private final mContext:Landroid/content/Context;

.field mIntentFilter:Landroid/content/IntentFilter;

.field protected final mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    .line 79
    new-instance v0, Lcom/android/nfc/LNfcPopupList$1;

    invoke-direct {v0}, Lcom/android/nfc/LNfcPopupList$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/nfc/LNfcPopupList;->NFC_ANTENNA_POPUP_MAP:Ljava/util/Map;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 138
    new-instance v0, Lcom/android/nfc/LNfcPopupList$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/LNfcPopupList$2;-><init>(Lcom/android/nfc/LNfcPopupList;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/nfc/LNfcPopupList;->mPrefs:Landroid/content/SharedPreferences;

    .line 49
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.nfc.action.NFC_ANTENNA_POPUP_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mIntentFilter:Landroid/content/IntentFilter;

    .line 52
    iget-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/LNfcPopupList;->mLgNfcPopupReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/LNfcPopupList;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/LNfcPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public applyNfcAntennaPositionPopup()Z
    .registers 16

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 88
    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    if-nez v10, :cond_8

    move v10, v11

    .line 135
    :goto_7
    return v10

    .line 92
    :cond_8
    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v10, Lcom/lge/nfcconfig/NfcConfigure;->mNfcAntennaPopup:Ljava/lang/String;

    .line 94
    .local v0, "antennaPosition":Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_24

    const-string v10, "none"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    sget-object v10, Lcom/android/nfc/LNfcPopupList;->NFC_ANTENNA_POPUP_MAP:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    :cond_24
    move v10, v11

    .line 95
    goto :goto_7

    .line 98
    :cond_26
    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_34

    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v13, "antennapopup"

    invoke-interface {v10, v13, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_36

    :cond_34
    move v10, v11

    .line 99
    goto :goto_7

    .line 102
    :cond_36
    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const-string v13, "statusbar"

    invoke-virtual {v10, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 104
    .local v9, "sb":Landroid/app/StatusBarManager;
    :try_start_40
    invoke-virtual {v9}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_db

    .line 109
    :goto_43
    sget-boolean v10, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    const-string v13, "LNfcPopupList"

    const-string v14, "applyNfcAntennaPositionPopup"

    invoke-static {v10, v13, v14}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v10, Lcom/android/nfc/LNfcPopupList;->NFC_ANTENNA_POPUP_MAP:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 112
    .local v8, "popupPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 113
    .local v4, "imageId":I
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 115
    .local v6, "messageId":I
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.lge.nfc.action.NFC_ANTENNA_POPUP_RESULT"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "checkBoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.lge.nfc.action.NFC_ANTENNA_POPUP_RESULT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "cancelIntent":Landroid/content/Intent;
    const-string v10, "cancel"

    invoke-virtual {v1, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    new-instance v10, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 119
    iget-object v13, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v14, 0x7f080001

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 120
    invoke-virtual {v10, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->imageId(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 121
    iget-object v13, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message2(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 122
    const v13, 0x104000a

    invoke-virtual {v10, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 123
    invoke-virtual {v10, v2, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 124
    invoke-virtual {v10, v1, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->cancelButtonIntent(Landroid/content/Intent;Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 125
    iget-object v13, p0, Lcom/android/nfc/LNfcPopupList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "antennadefaultcheck"

    invoke-interface {v13, v14, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v10, v12, v13}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->defaultCheckbox(ZZ)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    .line 126
    invoke-virtual {v10, v11}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v5

    .line 128
    .local v5, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v7, "popupIntent":Landroid/content/Intent;
    const-string v10, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const v10, 0x10008000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const-string v10, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v7, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v10, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v10, v12

    .line 135
    goto/16 :goto_7

    .line 105
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "checkBoxIntent":Landroid/content/Intent;
    .end local v4    # "imageId":I
    .end local v5    # "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    .end local v6    # "messageId":I
    .end local v7    # "popupIntent":Landroid/content/Intent;
    .end local v8    # "popupPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_db
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "LNfcPopupList"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43
.end method

.method public applyNfcTagLongTimePopup()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    if-nez v3, :cond_6

    .line 75
    :goto_5
    return v2

    .line 59
    :cond_6
    sget-boolean v3, Lcom/android/nfc/LNfcPopupList;->DBG:Z

    const-string v4, "LNfcPopupList"

    const-string v5, "sendIntenttoNfcTagDetectLongTimeDialog"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v3, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    invoke-direct {v3}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;-><init>()V

    .line 63
    iget-object v4, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->title(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const v5, 0x7f08003e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->message(Ljava/lang/String;)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 65
    const v4, 0x104000a

    invoke-virtual {v3, v4}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->positiveButtonToken(I)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->selectPopup(Z)Lcom/android/nfc/utils/LNfcPopupInformation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/utils/LNfcPopupInformation$Builder;->build()Lcom/android/nfc/utils/LNfcPopupInformation;

    move-result-object v0

    .line 69
    .local v0, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/utils/LNfcPopupDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "popupIntent":Landroid/content/Intent;
    const-string v2, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string v2, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/android/nfc/LNfcPopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    const/4 v2, 0x1

    goto :goto_5
.end method
