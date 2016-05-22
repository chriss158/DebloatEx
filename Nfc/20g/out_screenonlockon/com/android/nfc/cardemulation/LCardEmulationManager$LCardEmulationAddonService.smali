.class public Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;
.super Lcom/lge/nfcaddon/ICardEmulationAddon$Stub;
.source "LCardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LCardEmulationAddonService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LCardEmulationAddonService"


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-direct {p0}, Lcom/lge/nfcaddon/ICardEmulationAddon$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultRoute()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "LCardEmulationAddonService"

    const-string v1, "getDefaultRoute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_16

    .line 145
    const-string v0, "LCardEmulationAddonService"

    const-string v1, "mPrefsEditor is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, -0x1

    .line 148
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route"

    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_15
.end method

.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 160
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServicesGsmaForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(II)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "option"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->getInstance(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    .line 213
    .local v0, "test":Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->get(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDisableOtherCategoryService(ILandroid/content/ComponentName;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v2, v2, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-nez v2, :cond_f

    .line 191
    const-string v2, "LCardEmulationAddonService"

    const-string v3, "Disabled automatic routing change."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_e
    :goto_e
    return v1

    .line 194
    :cond_f
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 195
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    .line 196
    .local v0, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    if-eqz v0, :cond_e

    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isDisable(ILandroid/content/ComponentName;)Z

    move-result v1

    goto :goto_e
.end method

.method public isServiceOverflow(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 205
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    const-string v2, "LCardEmulationAddonService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedShowOtherDisable :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getNeedShowOtherDisable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    .line 207
    .local v0, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getNeedShowOtherDisable()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->isAllAppEnable(I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x1

    goto :goto_33
.end method

.method public setDefaultRoute(I)Z
    .registers 4
    .param p1, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRoute(IZ)Z

    move-result v0

    return v0
.end method

.method public setDisableOtherCategoryService(ILandroid/content/ComponentName;Z)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isDisable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v3, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    if-nez v3, :cond_f

    .line 167
    const-string v3, "LCardEmulationAddonService"

    const-string v4, "Disabled automatic routing change."

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .line 185
    :cond_e
    :goto_e
    return v2

    .line 170
    :cond_f
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 171
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v1

    .line 172
    .local v1, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    const/4 v2, 0x0

    .line 173
    .local v2, "result":Z
    if-eqz v1, :cond_e

    .line 177
    if-eqz p3, :cond_35

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->addDisableComponentList(ILandroid/content/ComponentName;)Z

    move-result v2

    .line 182
    :goto_27
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v3, p1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "apduSrvList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onServicesUpdated(ILjava/util/List;)V

    goto :goto_e

    .line 178
    .end local v0    # "apduSrvList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_35
    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->removeDisableComponentList(ILandroid/content/ComponentName;)Z

    move-result v2

    goto :goto_27
.end method

.method public setValue(IILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "option"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->getInstance(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)Lcom/android/nfc/cardemulation/LCardEmulationTest;

    move-result-object v0

    .line 219
    .local v0, "test":Lcom/android/nfc/cardemulation/LCardEmulationTest;
    invoke-virtual {v0, p2, p3}, Lcom/android/nfc/cardemulation/LCardEmulationTest;->set(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method
