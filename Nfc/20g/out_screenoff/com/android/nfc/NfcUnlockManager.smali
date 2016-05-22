.class Lcom/android/nfc/NfcUnlockManager;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcUnlockManager$Singleton;,
        Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcUnlockManager"


# instance fields
.field private mLockscreenPollMask:I

.field private final mUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcUnlockManager;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcUnlockManager;
    .registers 1

    .prologue
    .line 32
    # getter for: Lcom/android/nfc/NfcUnlockManager$Singleton;->INSTANCE:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager$Singleton;->access$0()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    return-object v0
.end method

.method private recomputePollMask()I
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "pollMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 80
    return v0

    .line 77
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 78
    .local v1, "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget v3, v1, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mPollMask:I

    or-int/2addr v0, v3

    goto :goto_b
.end method

.method private static final tryUnlock_aroundBody0(Lcom/android/nfc/NfcUnlockManager;Landroid/nfc/Tag;)Z
    .registers 8
    .param p0, "ajc$this"    # Lcom/android/nfc/NfcUnlockManager;
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 57
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 58
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_12

    .line 72
    const/4 v4, 0x0

    :goto_11
    return v4

    .line 60
    :cond_12
    :try_start_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 61
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 62
    .local v2, "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget-object v4, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mUnlockHandler:Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v4, p1}, Landroid/nfc/INfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_2a

    move-result v4

    if-eqz v4, :cond_a

    .line 63
    const/4 v4, 0x1

    goto :goto_11

    .line 65
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :catch_2a
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NfcUnlockManager"

    const-string v5, "failed to communicate with unlock handler, removing"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 68
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    goto :goto_a
.end method

.method private static final tryUnlock_aroundBody1$advice(Lcom/android/nfc/NfcUnlockManager;Landroid/nfc/Tag;Lcom/android/nfc/ANfcUnlockManager;Landroid/nfc/Tag;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 14

    .prologue
    .line 19
    move-object v4, p0

    .local v4, "ajc$this":Lcom/android/nfc/NfcUnlockManager;
    move-object v5, p1

    .local v5, "tag":Landroid/nfc/Tag;
    move-object v6, p2

    .local v6, "ajc$aspectInstance":Lcom/android/nfc/ANfcUnlockManager;
    move-object v5, p3

    move-object v8, p4

    .local v8, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {}, Lcom/android/nfc/ANfcUnlockManager;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$DBG()Z

    move-result v1

    const-string v2, "ANfcUnlockManager.aj"

    const-string v3, "around() : execution (* NfcUnlockManager.tryUnlock(..)"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v4, v5}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock_aroundBody0(Lcom/android/nfc/NfcUnlockManager;Landroid/nfc/Tag;)Z

    move-result v0

    .line 23
    .local v0, "result":Z
    if-nez v0, :cond_1d

    .line 24
    const-string v1, "ANfcUnlockManager.aj"

    const-string v2, "Try Unlock - false"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1d
    return v0
.end method


# virtual methods
.method declared-synchronized addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I
    .registers 7
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_26

    .line 43
    :goto_f
    monitor-exit p0

    return v0

    .line 41
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;-><init>(Landroid/nfc/INfcUnlockHandler;ILcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_26

    goto :goto_f

    .line 37
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLockscreenPollMask()I
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isLockscreenPollingEnabled()Z
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeUnlockHandler(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "unlockHandler"    # Landroid/os/IBinder;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 52
    :cond_14
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    .line 47
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized tryUnlock(Landroid/nfc/Tag;)Z
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 1
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/nfc/ANfcUnlockManager;->aspectOf()Lcom/android/nfc/ANfcUnlockManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p1, v1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock_aroundBody1$advice(Lcom/android/nfc/NfcUnlockManager;Landroid/nfc/Tag;Lcom/android/nfc/ANfcUnlockManager;Landroid/nfc/Tag;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
