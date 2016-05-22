.class public Lcom/android/nfc/cardemulation/LRegisteredAidCache;
.super Lcom/android/nfc/cardemulation/RegisteredAidCache;
.source "LRegisteredAidCache.java"


# static fields
.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field public static final PREF:Ljava/lang/String; = "NfcServiceCEPrefs"

.field static final TAG:Ljava/lang/String; = "LRegisteredAidCache"


# instance fields
.field isOverflow:Z

.field public mCEPrefs:Landroid/content/SharedPreferences;

.field public mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field mDefaultRouteRegAidCache:I

.field mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

.field mOhterCategoryMnager:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

.field protected mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>()V

    .line 23
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mOhterCategoryMnager:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->isOverflow:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mOhterCategoryMnager:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    .line 32
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->isOverflow:Z

    .line 46
    const-string v0, "NfcServiceCEPrefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 48
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    .line 49
    return-void
.end method


# virtual methods
.method protected checkadditionalService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method protected isDisabledService(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-eqz v0, :cond_48

    .line 129
    invoke-virtual {p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mOhterCategoryMnager:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isDisable(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 131
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v1, "LRegisteredAidCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip add aid > component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method matchedResolvedAids(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "entryValue"    # Ljava/lang/String;
    .param p2, "aidToResolve"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 121
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v1, "LRegisteredAidCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resolvedAids.add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_30
    return-void
.end method

.method resolvedOtherAID(Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 6
    .param p2, "defaultComponent"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "resolveInfo"    # Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ")",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveServiceInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    return-void
.end method

.method public setDefaultDest(I)V
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mDefaultRouteRegAidCache:I

    .line 53
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->setDefaultDest(I)V

    .line 54
    return-void
.end method

.method public setOverflowFlag(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->isOverflow:Z

    .line 139
    return-void
.end method

.method protected updateChange(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 107
    return-void
.end method
