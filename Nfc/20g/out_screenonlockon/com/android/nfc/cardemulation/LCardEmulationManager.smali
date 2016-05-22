.class public Lcom/android/nfc/cardemulation/LCardEmulationManager;
.super Lcom/android/nfc/cardemulation/CardEmulationManager;
.source "LCardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;,
        Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;
    }
.end annotation


# static fields
.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field protected static final CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DEFAULT_PREF_INSTALL_CTS:Z = false

.field static final DEFAULT_ROUTE_DEFAULT:I = -0x1

.field public static final PREF:Ljava/lang/String; = "NfcServiceCEPrefs"

.field static final PREF_DEFAULT_ROUTE:Ljava/lang/String; = "default_route"

.field static final PREF_INSTALL_CTS:Ljava/lang/String; = "install_cts"

.field public static final PREF_KK:Ljava/lang/String; = "NfcServicePrefs"

.field protected static final SETTING_PACKAGE:Ljava/lang/String; = "com.lge.NfcSettings.MainActivity$NfcAutoRouteTop"

.field static final TAG:Ljava/lang/String; = "LCardEmulationManager"

.field static mDefaultRouteDest:I

.field static mRouteNumber:I

.field public static sLTapAgainDialogEnalbed:Z


# instance fields
.field public mCEPrefs:Landroid/content/SharedPreferences;

.field public mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field public mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

.field public mDefaultRoute:I

.field protected mHCERequireSetting:Z

.field protected mIsNotRequiredChangeRoute:Z

.field public mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

.field public mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

.field protected mNeedShowOtherDisable:Z

.field protected mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/16 v0, 0xf3

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRouteDest:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mRouteNumber:I

    .line 66
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 67
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>()V

    .line 56
    const/16 v0, 0xf3

    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mHCERequireSetting:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mIsNotRequiredChangeRoute:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mNeedShowOtherDisable:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>()V

    .line 56
    const/16 v2, 0xf3

    iput v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mHCERequireSetting:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mIsNotRequiredChangeRoute:Z

    .line 76
    iput-boolean v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mNeedShowOtherDisable:Z

    .line 89
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    .line 90
    new-instance v2, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    invoke-direct {v2, p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    .line 92
    const-string v2, "NfcServiceCEPrefs"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 93
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 95
    new-instance v2, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {v2, p1, v3}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    .line 97
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v4, "host"

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 98
    iput v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 103
    :goto_3f
    const-string v2, "NfcServicePrefs"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "prefs_kk":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_d0

    if-eqz v0, :cond_d0

    .line 106
    const-string v2, "default_route"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 107
    const-string v2, "LCardEmulationManager"

    const-string v3, "Setting CE Pref. as Previous OS Pref. - Default Route"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    const-string v4, "default_route"

    iget v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    const-string v2, "LCardEmulationManager"

    const-string v3, "Remove Previous OS Pref. - Default Route"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "default_route"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :cond_7f
    const-string v2, "hcepopup"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 115
    const-string v2, "LCardEmulationManager"

    const-string v3, "Setting CE Pref. as Previous OS Pref. - HCE Popup"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "hcepopup"

    const-string v4, "hcepopup"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    const-string v2, "LCardEmulationManager"

    const-string v3, "Remove Previous OS Pref. - HCE Popup"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "hcepopup"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    :cond_af
    :goto_af
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v3, "default_route"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 132
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    iget v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    :cond_c7
    return-void

    .line 100
    .end local v0    # "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs_kk":Landroid/content/SharedPreferences;
    :cond_c8
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v2

    iput v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    goto/16 :goto_3f

    .line 124
    .restart local v0    # "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs_kk":Landroid/content/SharedPreferences;
    :cond_d0
    if-nez v1, :cond_d9

    .line 125
    const-string v2, "LCardEmulationManager"

    const-string v3, "prefs_kk is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_d9
    if-nez v0, :cond_af

    .line 128
    const-string v2, "LCardEmulationManager"

    const-string v3, "prefsEditor_kk is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af
.end method

.method private calculateAidLength(Ljava/lang/String;)I
    .registers 7
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x4

    .line 352
    .local v0, "aid_len":I
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v2, "LCardEmulationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AID LEN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 353
    return v0
.end method

.method private calculateAidLengthForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;)V
    .registers 8
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "aidManager"    # Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;

    .prologue
    .line 333
    if-nez p1, :cond_3

    .line 348
    :cond_2
    return-void

    .line 337
    :cond_3
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 339
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 340
    iget v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->calculateAidLength(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    .line 341
    iget v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    goto :goto_b

    .line 343
    :cond_37
    iget v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->calculateAidLength(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    .line 344
    iget v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    goto :goto_b
.end method

.method private checkAvailalbeRoutingUpdate(I)V
    .registers 5
    .param p1, "availableRoute"    # I

    .prologue
    const/4 v2, 0x1

    .line 254
    if-gez p1, :cond_1e

    .line 255
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.NfcSettings.MainActivity$NfcAutoRouteTop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 256
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    invoke-virtual {v0, v2}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->setOverflowFlag(Z)V

    .line 258
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNeedShowOtherDisable(Z)V

    .line 259
    const v0, 0x7f080055

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->showToast(I)V

    .line 263
    :goto_1d
    return-void

    .line 261
    :cond_1e
    const v0, 0x7f080056

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->showToast(I)V

    goto :goto_1d
.end method

.method private getAvailableRoutePath(ILcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;Ljava/util/List;)I
    .registers 11
    .param p1, "defaultPath"    # I
    .param p2, "aidManager"    # Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "removedServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/16 v3, 0xf3

    const/4 v2, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->doGetRoutingTableSize()I

    move-result v1

    .line 302
    .local v1, "aidRoutingTableSize":I
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->doGetMaxAidEntriesNumbers()I

    move-result v0

    .line 303
    .local v0, "aidEntryMaxSize":I
    const-string v4, "LCardEmulationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "aidRoutingTableSize == "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " aidEntryMaxSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    if-gt v4, v1, :cond_4f

    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    if-gt v4, v1, :cond_4f

    if-ne p1, v3, :cond_4c

    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    :goto_39
    if-gt v4, v0, :cond_4f

    .line 306
    const-string v3, "LCardEmulationManager"

    const-string v4, "Routing table both side all available"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4b

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNeedShowOtherDisable(Z)V

    .line 321
    .end local p1    # "defaultPath":I
    :cond_4b
    :goto_4b
    return p1

    .line 305
    .restart local p1    # "defaultPath":I
    :cond_4c
    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    goto :goto_39

    .line 311
    :cond_4f
    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    if-lt v4, v1, :cond_64

    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    if-gt v4, v1, :cond_64

    iget v4, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    if-gt v4, v0, :cond_64

    .line 312
    const-string v3, "LCardEmulationManager"

    const-string v4, "Need change default route HOST"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 313
    goto :goto_4b

    .line 314
    :cond_64
    iget v2, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    if-gt v2, v1, :cond_79

    iget v2, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    if-lt v2, v1, :cond_79

    iget v2, p2, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    if-gt v2, v0, :cond_79

    .line 315
    const-string v2, "LCardEmulationManager"

    const-string v4, "Need change default route UICC"

    invoke-static {v2, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    .line 316
    goto :goto_4b

    .line 319
    :cond_79
    const-string v2, "LCardEmulationManager"

    const-string v3, "Routing table both side all overflow"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 p1, -0x1

    goto :goto_4b
.end method

.method private showToast(I)V
    .registers 5
    .param p1, "toastString"    # I

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    .line 326
    .local v0, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isChangeDisableAppCount(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 327
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    .line 330
    :cond_14
    return-void
.end method


# virtual methods
.method public applyExceedAIDTable()V
    .registers 2

    .prologue
    .line 561
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-nez v0, :cond_9

    .line 562
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->processManualSwitching()V

    .line 564
    :cond_9
    return-void
.end method

.method public applySuccessRoutingUpdate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 639
    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNotRequiredChangeRoute(Z)V

    .line 640
    invoke-virtual {p0, v5}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNeedShowOtherDisable(Z)V

    .line 642
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-nez v2, :cond_e

    .line 653
    :cond_d
    :goto_d
    return-void

    .line 646
    :cond_e
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I

    move-result v0

    .line 647
    .local v0, "defaultRoute":I
    const-string v2, "LCardEmulationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "defualt route :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v1

    .line 650
    .local v1, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isChangeDisableAppCount(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 651
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method public changeDefaultRoute()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 683
    const-string v0, "LCardEmulationManager"

    const-string v1, "changeDefaultRoute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v0, :cond_1d

    .line 685
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z

    .line 687
    :cond_1d
    return-void
.end method

.method public checkCTSverfier()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 375
    sget-object v4, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v4, :cond_8

    .line 398
    :cond_7
    :goto_7
    return v3

    .line 378
    :cond_8
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v5, "install_cts"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "mgid":[I
    :try_start_13
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 382
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const-string v4, "com.android.cts.verifier"

    iget-object v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;I)[I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_41

    move-result-object v1

    .line 386
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_23
    if-eqz v1, :cond_59

    array-length v4, v1

    if-lez v4, :cond_59

    .line 387
    sget-boolean v3, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v4, "LCardEmulationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CtsVerifier mgid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v3, 0x1

    goto :goto_7

    .line 383
    :catch_41
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v5, "LCardEmulationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CtsVerifier check exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_59
    sget-boolean v4, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v5, "LCardEmulationManager"

    const-string v6, "CtsVerifier is not exist, should be false"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_7

    .line 391
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "install_cts"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 392
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_7
.end method

.method public doSetDefaultDest(I)V
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 82
    invoke-static {}, Lcom/android/nfc/LNfcService;->getInstance()Lcom/android/nfc/LNfcService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/LNfcService;->setDefaultDest(I)V

    .line 83
    return-void
.end method

.method public getDefaultRoute()I
    .registers 4

    .prologue
    .line 437
    const-string v0, "LCardEmulationManager"

    const-string v1, "getDefaultRoute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_14

    .line 440
    const-string v0, "LCardEmulationManager"

    const-string v1, "mPrefsEditor is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v0, -0x1

    .line 448
    :goto_13
    return v0

    .line 444
    :cond_14
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->checkCTSverfier()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 445
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v1, "LCardEmulationManager"

    const-string v2, "CtsVerifier Mode"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    goto :goto_13

    .line 448
    :cond_25
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route"

    iget v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_13
.end method

.method protected getForegroundActivityName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 550
    const-string v0, ""

    .line 551
    .local v0, "foregroundActivityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 552
    .local v1, "manager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 553
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 554
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v3, "LCardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CURRENT Activity :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_38
    return-object v0
.end method

.method public getHceAppCount()I
    .registers 5

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 532
    .local v0, "apduSrvList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v0, :cond_e

    .line 533
    const/4 v1, 0x0

    .line 537
    :goto_d
    return v1

    .line 536
    :cond_e
    const-string v1, "LCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHceAppCount hostAppNum : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_d
.end method

.method public getNeedShowOtherDisable()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mNeedShowOtherDisable:Z

    return v0
.end method

.method public getOffHostRoute()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->checkCTSverfier()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 403
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v2, "LCardEmulationManager"

    const-string v3, "CtsVerifier Mode"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_10
    return v0

    .line 407
    :cond_11
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v1, v2, :cond_23

    .line 408
    const-string v0, "LCardEmulationManager"

    const-string v1, "getOffHostRoute() - UICC default"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v0, 0xf3

    goto :goto_10

    .line 411
    :cond_23
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v1, v2, :cond_35

    .line 412
    const-string v0, "LCardEmulationManager"

    const-string v1, "getOffHostRoute() - ESE default"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v0, 0xf4

    goto :goto_10

    .line 415
    :cond_35
    const-string v1, "LCardEmulationManager"

    const-string v2, "getOffHostRoute() - HOST default"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getPrefHcePopupvalue()Z
    .registers 5

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hcepopup"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 526
    .local v0, "rtn":Z
    const-string v1, "LCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrefHcePopupvalue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return v0
.end method

.method public getRequireHCEConfirmvalue()Z
    .registers 5

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hceconfirm"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 511
    .local v0, "mHCEBtn":Z
    const-string v1, "LCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRequireHCEConfirmvalue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return v0
.end method

.method protected initDefaultRoutePath(I)V
    .registers 5
    .param p1, "route"    # I

    .prologue
    .line 420
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initDefaultRoutePath() - route : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-enter p0

    .line 422
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->setDefaultDest(I)V

    .line 421
    monitor-exit p0

    .line 425
    return-void

    .line 421
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method initRoutingTable()V
    .registers 5

    .prologue
    .line 498
    const-string v1, "LCardEmulationManager"

    const-string v2, "-- initRoutingTable()"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :try_start_7
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v0

    .line 501
    .local v0, "routingOffhost":Z
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v1

    :goto_19
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->doSetDefaultDest(I)V

    .line 505
    .end local v0    # "routingOffhost":Z
    :goto_1c
    return-void

    .line 501
    .restart local v0    # "routingOffhost":Z
    :cond_1d
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_22

    move-result v1

    goto :goto_19

    .line 503
    .end local v0    # "routingOffhost":Z
    :catch_22
    move-exception v1

    const-string v1, "LCardEmulationManager"

    const-string v2, "initRoutingTable() - Exception"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    sget-object v7, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v1

    .line 267
    .local v1, "defaultPath":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "removedServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;)V

    .line 270
    .local v0, "aidManager":Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v3

    .line 272
    .local v3, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    const-string v7, "payment"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 273
    .local v2, "defaultPaymentService":Landroid/content/ComponentName;
    const-string v7, "LCardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Currunt Default Payment :: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz v2, :cond_47

    .line 276
    const-string v7, "LCardEmulationManager"

    const-string v8, "(defaultPaymentService != null)"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 278
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v7, "payment"

    invoke-direct {p0, v6, v7, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->calculateAidLengthForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;)V

    .line 281
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a4

    .line 290
    const-string v7, "LCardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "hostAidLength : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " offHostAidLength : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "LCardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "hostAidCount : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->hostAidCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " offHostAidCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;->offHostAidCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c1

    .line 297
    invoke-direct {p0, v1, v0, v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getAvailableRoutePath(ILcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;Ljava/util/List;)I

    move-result v7

    return v7

    .line 281
    :cond_a4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 282
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v3, p1, v8}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isDisable(ILandroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 283
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 286
    :cond_b8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    const-string v8, "other"

    invoke-direct {p0, v5, v8, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->calculateAidLengthForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Lcom/android/nfc/cardemulation/LCardEmulationManager$AidElmentSizeManager;)V

    goto :goto_4b

    .line 293
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_c1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 294
    .restart local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-interface {p2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_99
.end method

.method public isNotRequiredChangeRoute()Z
    .registers 4

    .prologue
    .line 362
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNotRequiredChangeRoute :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mIsNotRequiredChangeRoute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mIsNotRequiredChangeRoute:Z

    return v0
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 670
    const-string v1, "LCardEmulationManager"

    const-string v2, "onPreferredForegroundServiceChanged"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v1, :cond_32

    .line 673
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I

    move-result v0

    .line 674
    .local v0, "availableRoute":I
    if-gez v0, :cond_36

    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v1, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v1

    :goto_2c
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z

    .line 675
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->checkAvailalbeRoutingUpdate(I)V

    .line 678
    .end local v0    # "availableRoute":I
    :cond_32
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 679
    return-void

    .restart local v0    # "availableRoute":I
    :cond_36
    move v1, v0

    .line 674
    goto :goto_2c
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 657
    const-string v1, "LCardEmulationManager"

    const-string v2, "onPreferredPaymentServiceChanged"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v1, :cond_32

    .line 660
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I

    move-result v0

    .line 661
    .local v0, "availableRoute":I
    if-gez v0, :cond_36

    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v1, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v1

    :goto_2c
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z

    .line 662
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->checkAvailalbeRoutingUpdate(I)V

    .line 665
    .end local v0    # "availableRoute":I
    :cond_32
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 666
    return-void

    .restart local v0    # "availableRoute":I
    :cond_36
    move v1, v0

    .line 661
    goto :goto_2c
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v4, 0x1

    .line 232
    const-string v2, "LCardEmulationManager"

    const-string v3, "##### onServicesUpdated ######"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 234
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v2, :cond_23

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I

    move-result v0

    .line 236
    .local v0, "availableRoute":I
    if-gez v0, :cond_48

    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v2, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v2

    :goto_1d
    invoke-virtual {p0, v2, v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z

    .line 237
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->checkAvailalbeRoutingUpdate(I)V

    .line 240
    .end local v0    # "availableRoute":I
    :cond_23
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v2, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 242
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v2, :cond_31

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isAvailableRoutigTableUpdateDestination(ILjava/util/List;)I

    .line 245
    :cond_31
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 246
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->setOverflowFlag(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-static {v2}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->getInstance(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v1

    .line 250
    .local v1, "test":Lcom/android/nfc/cardemulation/LCardEmulationTest;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->sendIntent(Landroid/content/Context;)V

    .line 251
    return-void

    .end local v1    # "test":Lcom/android/nfc/cardemulation/LCardEmulationTest;
    .restart local v0    # "availableRoute":I
    :cond_48
    move v2, v0

    .line 236
    goto :goto_1d
.end method

.method protected processAutomaticSwitching()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 589
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "foregroundActivityName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I

    move-result v1

    .line 593
    .local v1, "defaultRoute":I
    sget-object v6, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v6, v9}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v0

    .line 594
    .local v0, "defaultPath":I
    sget-object v6, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-virtual {v6, v10}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getHCERoutePath(Z)I

    move-result v5

    .line 596
    .local v5, "secondaryPath":I
    const-string v6, "LCardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Default route : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-ne v1, v0, :cond_7a

    .line 598
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->isNotRequiredChangeRoute()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 599
    invoke-virtual {p0, v10}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNotRequiredChangeRoute(Z)V

    .line 636
    :cond_35
    :goto_35
    return-void

    .line 604
    :cond_36
    const-string v6, "LCardEmulationManager"

    const-string v7, "Routing table overflow!!"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v6, "LCardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Try to change default route(default("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") -> second("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v6, 0x1

    :try_start_62
    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_35

    .line 608
    :catch_66
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "LCardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 614
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    const-string v6, "LCardEmulationManager"

    const-string v7, "Default route(secondary)"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v6, "LCardEmulationManager"

    const-string v7, "Try to change default route(secondaryPath -> defaultPath)"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNeedShowOtherDisable(Z)V

    .line 620
    const/4 v6, 0x1

    :try_start_8c
    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setNotRequiredChangeRoute(Z)V

    .line 621
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_b4

    .line 626
    :goto_93
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v4

    .line 627
    .local v4, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    const/16 v6, -0x2710

    invoke-virtual {v4, v6}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isChangeDisableAppCount(I)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 628
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    const v8, 0x7f080055

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_35

    .line 622
    .end local v4    # "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    :catch_b4
    move-exception v2

    .line 623
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "LCardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 632
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    :cond_c8
    const-string v6, "com.lge.NfcSettings.MainActivity$NfcAutoRouteTop"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 633
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    invoke-virtual {v6}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->applyHostCardEmulationAutomaticSwitchingPopup()Z

    goto/16 :goto_35
.end method

.method protected processManualSwitching()V
    .registers 4

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getPrefHcePopupvalue()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    if-nez v1, :cond_b

    .line 581
    :cond_a
    :goto_a
    return-void

    .line 571
    :cond_b
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-nez v1, :cond_15

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    .line 575
    :cond_15
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I

    move-result v0

    .line 577
    .local v0, "defaultRoute":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getRequireHCEConfirmvalue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->applyHostCardEmulationExceedAidTablePopup(IZ)Z

    .line 578
    sget-object v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-eqz v1, :cond_a

    .line 579
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    goto :goto_a
.end method

.method public setDefaultRoute(IZ)Z
    .registers 8
    .param p1, "route"    # I
    .param p2, "isRequireCallStackLayer"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 452
    const-string v2, "LCardEmulationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDefaultRoute : route("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_28

    .line 456
    const-string v1, "LCardEmulationManager"

    const-string v2, "mPrefsEditor is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_27
    return v0

    .line 460
    :cond_28
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v3, "default_route"

    iget v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_3d

    .line 461
    const-string v0, "LCardEmulationManager"

    const-string v2, "Same as previous default route!!"

    invoke-static {v0, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 462
    goto :goto_27

    .line 465
    :cond_3d
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "hcepopup"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    .line 473
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eqz v0, :cond_6b

    if-eqz p2, :cond_6b

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRouteDest(I)V

    :goto_69
    move v0, v1

    .line 479
    goto :goto_27

    .line 476
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->initDefaultRoutePath(I)V

    goto :goto_69
.end method

.method public setDefaultRouteDest(I)V
    .registers 4
    .param p1, "route"    # I

    .prologue
    .line 428
    const-string v0, "LCardEmulationManager"

    const-string v1, "setDefaultRouteDest()"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcDisabled()V

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->initDefaultRoutePath(I)V

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->doSetDefaultDest(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcEnabled()V

    .line 434
    return-void
.end method

.method public setInstallCtsVerifier(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 483
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v0, :cond_7

    .line 495
    :cond_6
    :goto_6
    return-void

    .line 487
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_17

    .line 488
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "install_cts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 489
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    :cond_17
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRouteDest(I)V

    goto :goto_6
.end method

.method public setNeedShowOtherDisable(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mNeedShowOtherDisable:Z

    .line 372
    return-void
.end method

.method public setNotRequiredChangeRoute(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 357
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNotRequiredChangeRoute :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mIsNotRequiredChangeRoute:Z

    .line 359
    return-void
.end method

.method public setRequireHCEConfirmvalue(Z)V
    .registers 5
    .param p1, "setvalue"    # Z

    .prologue
    .line 518
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRequireHCEConfirmvalue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hceconfirm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 520
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    return-void
.end method

.method public showSettingBtnInOverflowPopup()V
    .registers 3

    .prologue
    .line 542
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAdvancedHCEEnable:Z

    if-eqz v0, :cond_11

    .line 543
    const-string v0, "LCardEmulationManager"

    const-string v1, "Show setting button"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    .line 546
    :cond_11
    return-void
.end method
