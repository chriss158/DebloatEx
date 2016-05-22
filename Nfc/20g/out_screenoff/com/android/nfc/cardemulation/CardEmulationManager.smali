.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field mContext:Landroid/content/Context;

.field mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 68
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 69
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 70
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 71
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 73
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 74
    return-void
.end method

.method private static final onHostCardEmulationDeactivated_aroundBody0(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .registers 2
    .param p0, "ajc$this"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 92
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    .line 93
    return-void
.end method

.method private static final onHostCardEmulationDeactivated_aroundBody1$advice(Lcom/android/nfc/cardemulation/CardEmulationManager;Lcom/android/nfc/cardemulation/ATapAgainDialog;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/nfc/cardemulation/CardEmulationManager;
    .param p1, "ajc$aspectInstance"    # Lcom/android/nfc/cardemulation/ATapAgainDialog;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 28
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$DBG()Z

    move-result v0

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "around : exceution(CardEmulationManager.onHostCardEmulationDeactivated)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {p1}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mLTapAgainDialogEnalbed(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 31
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$DBG()Z

    move-result v0

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "mLTapAgainDialogEnalbed is true"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_22
    return-void

    .line 35
    :cond_23
    invoke-static {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated_aroundBody0(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    goto :goto_22
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 210
    const-string v3, "CardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not allowing defaults for category "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1d
    :goto_1d
    return-object v2

    .line 215
    :cond_1e
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_payment_default_component"

    .line 214
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 218
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 219
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_34

    if-nez v1, :cond_36

    :cond_34
    move-object v2, v1

    .line 220
    goto :goto_1d

    .line 222
    :cond_36
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_40

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_3e
    move-object v2, v1

    goto :goto_1d

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_40
    move-object v1, v2

    goto :goto_3e
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 250
    .local v0, "serviceFound":Z
    if-nez v0, :cond_18

    .line 256
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 259
    :cond_18
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onHostCardEmulationActivated()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 82
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    .line 83
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    .line 87
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated_aroundBody1$advice(Lcom/android/nfc/cardemulation/CardEmulationManager;Lcom/android/nfc/cardemulation/ATapAgainDialog;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public onNfcDisabled()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 110
    return-void
.end method

.method public onNfcEnabled()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 106
    return-void
.end method

.method public onOffHostAidSelected()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 97
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 414
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 415
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 408
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 409
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "services"    # Ljava/util/List;
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
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 127
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 101
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 102
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 232
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not allowing defaults for category "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    .line 245
    :goto_1d
    return v0

    .line 238
    :cond_1e
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 239
    :cond_28
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 240
    const-string v2, "nfc_payment_default_component"

    .line 241
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_36
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 245
    :goto_39
    const/4 v0, 0x1

    goto :goto_1d

    .line 241
    :cond_3b
    const/4 v0, 0x0

    goto :goto_36

    .line 243
    :cond_3d
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find default service to make default: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public showSettingBtnInOverflowPopup()V
    .registers 1

    .prologue
    .line 402
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "services"    # Ljava/util/List;
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 131
    const-string v6, "payment"

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 132
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_21

    const-string v6, "CardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current default: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_21
    if-eqz v0, :cond_ea

    .line 135
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v6, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v5

    .line 136
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v5, :cond_33

    const-string v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_de

    .line 137
    :cond_33
    if-nez v5, :cond_77

    .line 138
    const-string v6, "CardEmulationManager"

    const-string v7, "Default payment service unexpectedly removed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3c
    :goto_3c
    const/4 v3, 0x0

    .line 143
    .local v3, "numPaymentServices":I
    const/4 v2, 0x0

    .line 144
    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8b

    .line 153
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_64

    const-string v6, "CardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number of payment services is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_64
    if-nez v3, :cond_a2

    .line 156
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_71

    const-string v6, "CardEmulationManager"

    const-string v7, "Default removed, no services left."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_71
    const-string v6, "payment"

    invoke-virtual {p0, p1, v10, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 205
    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v3    # "numPaymentServices":I
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_76
    :goto_76
    return-void

    .line 139
    .restart local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_77
    const-string v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 140
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_3c

    const-string v6, "CardEmulationManager"

    const-string v7, "Default payment service had payment category removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 144
    .restart local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v3    # "numPaymentServices":I
    :cond_8b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 147
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_42

    const-string v7, "payment"

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_42

    .line 159
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_a2
    if-ne v3, v9, :cond_b5

    .line 161
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_af

    const-string v6, "CardEmulationManager"

    const-string v7, "Default removed, making remaining service default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_af
    const-string v6, "payment"

    .line 162
    invoke-virtual {p0, p1, v2, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_76

    .line 164
    :cond_b5
    if-le v3, v9, :cond_76

    .line 167
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_c2

    const-string v6, "CardEmulationManager"

    const-string v7, "Default removed, asking user to pick."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_c2
    const-string v6, "payment"

    .line 168
    invoke-virtual {p0, p1, v10, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 170
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    const v6, 0x10008000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_76

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v3    # "numPaymentServices":I
    :cond_de
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_76

    const-string v6, "CardEmulationManager"

    const-string v7, "Default payment service still ok."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 181
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_ea
    const/4 v3, 0x0

    .line 182
    .restart local v3    # "numPaymentServices":I
    const/4 v2, 0x0

    .line 183
    .restart local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f0
    :goto_f0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_105

    .line 192
    if-le v3, v9, :cond_11c

    .line 194
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_76

    const-string v6, "CardEmulationManager"

    const-string v7, "No default set, more than one service left."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 183
    :cond_105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 186
    .restart local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_f0

    const-string v7, "payment"

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 189
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_f0

    .line 195
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_11c
    if-ne v3, v9, :cond_130

    .line 197
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_129

    const-string v6, "CardEmulationManager"

    const-string v7, "No default set, making single service default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_129
    const-string v6, "payment"

    .line 198
    invoke-virtual {p0, p1, v2, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_76

    .line 202
    :cond_130
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_76

    const-string v6, "CardEmulationManager"

    const-string v7, "No default set, last payment service removed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method
