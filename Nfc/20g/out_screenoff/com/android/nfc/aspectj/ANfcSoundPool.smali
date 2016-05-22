.class public Lcom/android/nfc/aspectj/ANfcSoundPool;
.super Ljava/lang/Object;
.source "ANfcSoundPool.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ANfcSoundPool.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ANfcSoundPool;


# instance fields
.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/SoundPool;",
            "Lcom/android/nfc/utils/LNfcSoundPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->DBG:Z

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 25
    :goto_7
    return-void

    .line 24
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/aspectj/ANfcSoundPool;->mSoundPoolMap:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_aspectj_ANfcSoundPool$1$6a9af5d8proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_aspectj_ANfcSoundPool$2$915f4a62proceed(Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 8
    .param p0, "this"    # Landroid/media/SoundPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_android_nfc_aspectj_ANfcSoundPool$3$eef2e477proceed(Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Landroid/media/SoundPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/aspectj/ANfcSoundPool;->mSoundPoolMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/aspectj/ANfcSoundPool;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/aspectj/ANfcSoundPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;Ljava/util/HashMap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/aspectj/ANfcSoundPool;->mSoundPoolMap:Ljava/util/HashMap;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/aspectj/ANfcSoundPool;

    invoke-direct {v0}, Lcom/android/nfc/aspectj/ANfcSoundPool;-><init>()V

    sput-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ANfcSoundPool;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ANfcSoundPool;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_aspectj_ANfcSoundPool"

    sget-object v2, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ANfcSoundPool;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ANfcSoundPool;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_aspectj_ANfcSoundPool$1$6a9af5d8(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;
    .registers 8
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "(call(SoundPool.new(..)) && (!within(ANfcSoundPool) && !within(LNfcSoundPool)))"
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    const-string v4, "around() : call(SoundPool.new(..))"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/nfc/utils/LNfcSoundPool;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/nfc/utils/LNfcSoundPool;-><init>(I)V

    .line 33
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create NfcSoundPool : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    .line 36
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-static {p0}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v1
.end method

.method public ajc$around$com_android_nfc_aspectj_ANfcSoundPool$2$915f4a62(Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 11
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I
    .param p4, "priority"    # I
    .param p5, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "soundPool,context,resId,priority,ajc$aroundClosure"
        value = "(call(int SoundPool.load(Context, int, int)) && (args(context, resId, priority) && (!within(LNfcSoundPool) && target(soundPool))))"
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 42
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.load()) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_26

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_25
    return v1

    :cond_26
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_25
.end method

.method public ajc$around$com_android_nfc_aspectj_ANfcSoundPool$3$eef2e477(Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "soundPool,ajc$aroundClosure"
        value = "(call(void SoundPool.release(..)) && (!within(ANfcSoundPool) && (!within(LNfcSoundPool) && target(soundPool))))"
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 51
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.release(..)) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_2e

    .line 53
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->release()V

    .line 54
    invoke-static {p0}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2e
    return-void
.end method
