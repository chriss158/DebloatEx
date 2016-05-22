.class public Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
.super Ljava/lang/Object;
.source "AConfirmConnectToWifiNetworkActivity.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AConfirmConnectToWifiNetworkActivity.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;


# instance fields
.field mActivity:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->DBG:Z

    .line 27
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$postClinit()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    sput-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$2$f3cd56a6proceed(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 6
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$3$b5349c5fproceed(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .registers 4
    .param p0, "this"    # Landroid/app/AlertDialog$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$6$4bc3ce6aproceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$7$caea8a8proceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$8$b19de6cproceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$9$697d1ca5proceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final ajc$if$480a8fec(Landroid/net/wifi/WifiManager;Z)Z
    .registers 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "enabled"    # Z

    .prologue
    .line 1
    return p1
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->mActivity:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->mActivity:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    invoke-direct {v0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;-><init>()V

    sput-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_AConfirmConnectToWifiNetworkActivity"

    sget-object v2, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_android_nfc_AConfirmConnectToWifiNetworkActivity$5$3166bff3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .registers 8
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "activity,wifiManager"
        value = "(execution(* ConfirmConnectToWifiNetworkActivity.doConnect(..)) && (target(activity) && args(wifiManager)))"
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mAlertDialog(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 90
    .local v0, "isAlertDialogShowing":Z
    sget-boolean v1, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->DBG:Z

    const-string v2, "AConfirmConnectToWifiNetworkActivity.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after() : execution(ConfirmConnectToWifiNetworkActivity.doConnect(..)) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_21

    .line 95
    :goto_20
    return-void

    .line 94
    :cond_21
    invoke-virtual {p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    goto :goto_20
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$2$f3cd56a6(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,theme,ajc$aroundClosure"
        value = "(call(AlertDialog.Builder.new(Context, int)) && (within(ConfirmConnectToWifiNetworkActivity) && args(context, theme)))"
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.new())"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$3$b5349c5f(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .registers 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "builder,ajc$aroundClosure"
        value = "newAlertDialog_create(builder)"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.create())"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f080018

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const v1, 0x7f080017

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-static {p1, p2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$3$b5349c5fproceed(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$6$4bc3ce6a(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,ajc$aroundClosure"
        value = "alertDialog_show(activity)"
    .end annotation

    .prologue
    .line 99
    const-string v0, "PopupDialogType"

    .line 100
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 99
    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 100
    if-nez v0, :cond_e

    .line 101
    invoke-static {p1, p2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$6$4bc3ce6aproceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 105
    :goto_d
    return-void

    .line 104
    :cond_e
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : alertDialog_show() - bypass AlertDialog.show() - for vzw UX scenario"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$7$caea8a8(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,ajc$aroundClosure"
        value = "alertDialog_setOnClickListener(activity)"
    .end annotation

    .prologue
    .line 109
    const-string v0, "PopupDialogType"

    .line 110
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 109
    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 110
    if-nez v0, :cond_e

    .line 111
    invoke-static {p1, p2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$7$caea8a8proceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 116
    :goto_d
    return-void

    .line 114
    :cond_e
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : alertDialog_setOnClickListener() - bypass AlertDialog.setOnClickListener(), run onClick - for vzw UX scenario "

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->onClick(Landroid/view/View;)V

    goto :goto_d
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$8$b19de6c(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* WifiManager.ActionListener.onSuccess(..))"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 119
    const-string v1, "PopupDialogType"

    .line 120
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 119
    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 120
    if-nez v1, :cond_f

    .line 121
    invoke-static {p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$8$b19de6cproceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 126
    :goto_e
    return-void

    .line 124
    :cond_f
    invoke-static {p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "printableSsid":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v2

    const v3, 0x7f08002f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method public ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$9$697d1ca5(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,ajc$aroundClosure"
        value = "LGMDM_checkDisabledWifiConnection(activity)"
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "ssid":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 133
    .local v0, "bssid":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v2

    const-string v3, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v4, "around() : call(LGMDM_checkDisabledWifiConnection())"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 136
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v2

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 136
    invoke-interface {v2, v1, v0, v3}, Lcom/lge/cappuccino/IMdm;->checkDisabledWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_4b

    .line 142
    :goto_4a
    return-void

    .line 141
    :cond_4b
    invoke-static {p1, p2}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_AConfirmConnectToWifiNetworkActivity$9$697d1ca5proceed(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_4a
.end method

.method public ajc$before$com_android_nfc_AConfirmConnectToWifiNetworkActivity$1$8bfebad2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "activity"
        value = "(execution(* ConfirmConnectToWifiNetworkActivity.onCreate(..)) && target(activity))"
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->mActivity:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 33
    return-void
.end method

.method public ajc$before$com_android_nfc_AConfirmConnectToWifiNetworkActivity$4$84183156(Landroid/net/wifi/WifiManager;Z)V
    .registers 7
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "wifiManager,enabled"
        value = "setWifiEnabled(wifiManager, enabled)"
    .end annotation

    .prologue
    .line 79
    sget-boolean v1, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->DBG:Z

    const-string v2, "AConfirmConnectToWifiNetworkActivity.aj"

    const-string v3, "around() : call(* WifiManager.setWifiEnabled(..))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 81
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_15

    .line 82
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1a

    .line 83
    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 85
    :cond_1a
    return-void
.end method

.method public synthetic ajc$pointcut$$LGMDM_checkDisabledWifiConnection$818(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(this(activity) && (call(* android.net.wifi.WifiManager.connect(..)) && withincode(* com.android.nfc.ConfirmConnectToWifiNetworkActivity.doConnect(..))))"
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public synthetic ajc$pointcut$$alertDialog_setOnClickListener$717(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(this(activity) && call(* android.widget.Button.setOnClickListener(..)))"
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public synthetic ajc$pointcut$$alertDialog_show$681(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "activity"
        value = "(this(activity) && call(* android.app.AlertDialog.show(..)))"
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public synthetic ajc$pointcut$$newAlertDialog_create$4a7(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "builder"
        value = "(within(com.android.nfc.ConfirmConnectToWifiNetworkActivity) && (target(builder) && call(* android.app.AlertDialog$Builder.create(..))))"
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public synthetic ajc$pointcut$$setWifiEnabled$573(Landroid/net/wifi/WifiManager;Z)V
    .registers 3
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "wifiManager,enabled"
        value = "(within(com.android.nfc.ConfirmConnectToWifiNetworkActivity) && (target(wifiManager) && (args(enabled) && (call(* android.net.wifi.WifiManager.setWifiEnabled(..)) && if(void java.lang.Object.if_())))))"
    .end annotation

    .prologue
    .line 44
    return-void
.end method
