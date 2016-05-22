.class public Lcom/android/nfc/ANfcApplication;
.super Ljava/lang/Object;
.source "ANfcApplication.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ANfcApplication.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/ANfcApplication;


# instance fields
.field private mApplication:Lcom/android/nfc/NfcApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/nfc/ANfcApplication;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 17
    :goto_3
    return-void

    .line 16
    :catch_4
    move-exception v0

    sput-object v0, Lcom/android/nfc/ANfcApplication;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ANfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    .line 16
    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_ANfcApplication$2$2ce4a662proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcApplication$com_android_nfc_ANfcApplication$mApplication(Lcom/android/nfc/ANfcApplication;)Lcom/android/nfc/NfcApplication;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/ANfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcApplication$com_android_nfc_ANfcApplication$mApplication(Lcom/android/nfc/ANfcApplication;Lcom/android/nfc/NfcApplication;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ANfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/ANfcApplication;

    invoke-direct {v0}, Lcom/android/nfc/ANfcApplication;-><init>()V

    sput-object v0, Lcom/android/nfc/ANfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcApplication;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/ANfcApplication;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcApplication;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_ANfcApplication"

    sget-object v2, Lcom/android/nfc/ANfcApplication;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/ANfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcApplication;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcApplication;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_ANfcApplication$2$2ce4a662(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;
    .registers 5
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(NfcService.new(..))"
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/nfc/ANfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcApplication$com_android_nfc_ANfcApplication$mApplication(Lcom/android/nfc/ANfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    .line 29
    .local v0, "nfcconfigure":Lcom/lge/nfcconfig/NfcConfigure;
    invoke-static {v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance(Lcom/lge/nfcconfig/NfcConfigure;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 30
    new-instance v1, Lcom/android/nfc/VNfcService;

    invoke-static {p0}, Lcom/android/nfc/ANfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcApplication$com_android_nfc_ANfcApplication$mApplication(Lcom/android/nfc/ANfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/nfc/VNfcService;-><init>(Landroid/app/Application;)V

    return-object v1
.end method

.method public ajc$before$com_android_nfc_ANfcApplication$1$ac19b458(Lcom/android/nfc/NfcApplication;)V
    .registers 2
    .param p1, "application"    # Lcom/android/nfc/NfcApplication;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "application"
        value = "(execution(* NfcApplication.onCreate(..)) && this(application))"
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/nfc/ANfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    .line 23
    return-void
.end method
