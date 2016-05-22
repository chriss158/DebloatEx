.class public Lcom/android/nfc/utils/LNfcSoundPool;
.super Ljava/lang/Object;
.source "LNfcSoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field private static final DBG:Z

.field private static final NFC_SOUND_END_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_End.ogg"

.field private static final NFC_SOUND_ERROR_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_Error.ogg"

.field private static final NFC_SOUND_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/"

.field private static final NFC_SOUND_START_FILEPATH:Ljava/lang/String; = "system/media/audio/ui/NFC_Start.ogg"

.field private static final SOUND_POOL_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LNfcSoundPool"


# instance fields
.field private mIsWaitLoadedSoundPool:Z

.field private mSoundIdMap:Landroid/util/SparseIntArray;

.field private mSoundLoadingMap:Landroid/util/SparseIntArray;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcSoundPool;->DBG:Z

    .line 35
    new-instance v0, Lcom/android/nfc/utils/LNfcSoundPool$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/nfc/utils/LNfcSoundPool$1;-><init>(I)V

    sput-object v0, Lcom/android/nfc/utils/LNfcSoundPool;->SOUND_POOL_MAP:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 47
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/media/SoundPool;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/android/nfc/utils/LNfcSoundPool;-><init>(Landroid/media/SoundPool;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/media/SoundPool;)V
    .registers 3
    .param p1, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mIsWaitLoadedSoundPool:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    .line 51
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    .line 53
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getSoundPool()Landroid/media/SoundPool;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public declared-synchronized load(Landroid/content/Context;II)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-nez v1, :cond_8

    .line 62
    const/4 v0, -0x1

    .line 77
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 65
    :cond_8
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":I
    :try_start_9
    sget-object v1, Lcom/android/nfc/utils/LNfcSoundPool;->SOUND_POOL_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1f

    .line 67
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/nfc/utils/LNfcSoundPool;->SOUND_POOL_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, p3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 70
    :cond_1f
    if-nez v0, :cond_27

    .line 71
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 74
    :cond_27
    if-eqz v0, :cond_6

    .line 75
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2f

    goto :goto_6

    .line 61
    .end local v0    # "ret":I
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized load(Landroid/content/Context;III)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # I
    .param p3, "resId"    # I
    .param p4, "priority"    # I

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 83
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    if-nez v1, :cond_10

    .line 84
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    .line 86
    :cond_10
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 87
    monitor-exit p0

    return v0

    .line 81
    .end local v0    # "ret":I
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/nfc/utils/LNfcSoundPool;->DBG:Z

    const-string v1, "LNfcSoundPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onLoadComplete] soundPool : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-boolean v0, Lcom/android/nfc/utils/LNfcSoundPool;->DBG:Z

    const-string v1, "LNfcSoundPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onLoadComplete] sampleId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean v0, Lcom/android/nfc/utils/LNfcSoundPool;->DBG:Z

    const-string v1, "LNfcSoundPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onLoadComplete] status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_4e

    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz p3, :cond_56

    .line 112
    :cond_4e
    const-string v0, "LNfcSoundPool"

    const-string v1, "[onLoadComplete] sound Pool is null or status is not success"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_55
    :goto_55
    return-void

    .line 116
    :cond_56
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_63

    .line 117
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 120
    :cond_63
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mIsWaitLoadedSoundPool:Z

    if-eqz v0, :cond_55

    .line 121
    monitor-enter p0

    .line 122
    :try_start_70
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 121
    monitor-exit p0

    goto :goto_55

    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public play(IFFIIF)I
    .registers 14
    .param p1, "key"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 99
    :cond_c
    const/4 v0, -0x1

    .line 101
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    goto :goto_d
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcSoundPool;->waitForLoadedSoundPoll()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundIdMap:Landroid/util/SparseIntArray;

    .line 93
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundPool:Landroid/media/SoundPool;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 95
    monitor-exit p0

    return-void

    .line 91
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForLoadedSoundPoll()V
    .registers 3

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mSoundLoadingMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 130
    const-string v0, "LNfcSoundPool"

    const-string v1, "do not need to checking loadedSoundPoll...."

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1f

    .line 142
    :goto_11
    return-void

    .line 135
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mIsWaitLoadedSoundPool:Z

    .line 136
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcSoundPool;->mIsWaitLoadedSoundPool:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_22
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1f

    .line 128
    :goto_1d
    :try_start_1d
    monitor-exit p0

    goto :goto_11

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0

    .line 139
    :catch_22
    move-exception v0

    :try_start_23
    const-string v0, "LNfcSoundPool"

    const-string v1, "Error Sound"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_1f

    goto :goto_1d
.end method
