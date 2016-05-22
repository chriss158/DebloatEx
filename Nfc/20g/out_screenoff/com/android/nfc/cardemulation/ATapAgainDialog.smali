.class public Lcom/android/nfc/cardemulation/ATapAgainDialog;
.super Ljava/lang/Object;
.source "ATapAgainDialog.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ATapAgainDialog.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/ATapAgainDialog;


# instance fields
.field private mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

.field private mLTapAgainDialogEnalbed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mLTapAgainDialogEnalbed:Z

    .line 14
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    return v0
.end method

.method static synthetic ajc$around$com_android_nfc_cardemulation_ATapAgainDialog$2$baca3196proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mLTapAgainDialogEnalbed(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mLTapAgainDialogEnalbed:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/ATapAgainDialog;Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mLTapAgainDialogEnalbed(Lcom/android/nfc/cardemulation/ATapAgainDialog;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mLTapAgainDialogEnalbed:Z

    return-void
.end method

.method public static ajc$interMethod$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Lcom/android/nfc/cardemulation/TapAgainDialog;Landroid/content/res/Configuration;)V
    .registers 5
    .param p0, "ajc$this_"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 46
    # getter for: Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->access$0()Z

    move-result v0

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "add : TapAgainDialog.onConfigurationChanged"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$superDispatch$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$set$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V

    .line 49
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Lcom/android/nfc/cardemulation/TapAgainDialog;Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/ATapAgainDialog;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/ATapAgainDialog;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_cardemulation_ATapAgainDialog"

    sget-object v2, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/ATapAgainDialog;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/ATapAgainDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$1$c3082300(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .registers 5
    .param p1, "dialog"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "dialog"
        value = "(execution(* TapAgainDialog.onCreate(..)) && this(dialog))"
    .end annotation

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "after : exceution(TapAgainDialog.onCreate)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mLTapAgainDialogEnalbed:Z

    .line 25
    return-void
.end method

.method public ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$3$2fa04006(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .registers 6
    .param p1, "dialog"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "dialog"
        value = "(execution(* TapAgainDialog.onStop(..)) && this(dialog))"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-boolean v0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->DBG:Z

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "after : exceution(TapAgainDialog.onStop)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1, v3}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$set$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V

    .line 41
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/ATapAgainDialog;->mLTapAgainDialogEnalbed:Z

    .line 42
    return-void
.end method

.method public ajc$around$com_android_nfc_cardemulation_ATapAgainDialog$2$baca3196(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* CardEmulationManager.onHostCardEmulationDeactivated(..))"
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$DBG()Z

    move-result v0

    const-string v1, "ATapAgainDialog.aj"

    const-string v2, "around : exceution(CardEmulationManager.onHostCardEmulationDeactivated)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_ATapAgainDialog$mLTapAgainDialogEnalbed(Lcom/android/nfc/cardemulation/ATapAgainDialog;)Z

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
    invoke-static {p1}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$around$com_android_nfc_cardemulation_ATapAgainDialog$2$baca3196proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_22
.end method
