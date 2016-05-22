.class public Lcom/android/nfc/lgsharing/MusicShareDataParser;
.super Ljava/lang/Object;
.source "MusicShareDataParser.java"


# static fields
.field private static final ACTION_SERVICE_START:Ljava/lang/String; = "com.lge.bluetooth.musicshare.ServiceStart"

.field private static final DBG:Z

.field private static final EXTRA_ACTION_POPUP:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.ACTION_POPUP"

.field private static final EXTRA_CALLERID:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.CallerId"

.field private static final EXTRA_CONNECTION_INFO:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.CONNECTION_INFO"

.field private static final EXTRA_CONNECTION_INFO_LOCAL:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.CONNECTION_INFO_LOCAL"

.field private static final EXTRA_INITIAL_ROLE_SERVER:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.FAKE_ROLE_SERVER"

.field private static final EXTRA_PEER_ADDR:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.PEER_ADDR"

.field private static final EXTRA_PEER_ROLE_SERVER:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.PEER_ROLE_SERVER"

.field private static final EXTRA_ROLE_SERVER:Ljava/lang/String; = "com.lge.bluetooth.musicshare.extra.ROLE_SERVER"

.field private static final MUSICSHARE_CLIENT:B = 0x2t

.field private static final MUSICSHARE_INITIAL:B = 0x0t

.field private static final MUSICSHARE_SERVER:B = 0x1t

.field public static final PACKAGE:Ljava/lang/String; = "com.lge.musicshare"

.field private static final PAYLOAD_ADDRESS_HEADER:B = 0x1t

.field private static final PAYLOAD_CONNECTION_INFO:B = 0x3t

.field private static final PAYLOAD_SERVER_HEADER:B = 0x2t

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicShareDataParser"

.field public static final TYPE:Ljava/lang/String; = "lge.com:Sharingpackage-com.lge.musicshare"

.field private static final UUID_INF:Ljava/lang/String; = "U6"

.field private static final UUID_LEN:I = 0x6

.field private static final VERSION:B = 0x10t

.field private static final VER_INF:Ljava/lang/String; = "V4"

.field private static final VER_LEN:I = 0x4


# instance fields
.field mActivityManager:Landroid/app/ActivityManager;

.field private mAddress:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field private mConnectionInfo:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mServerStatus:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->DBG:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAddress:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mConnectionInfo:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    .line 61
    iput-object v1, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iput-object v1, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mActivityManager:Landroid/app/ActivityManager;

    .line 65
    iput-object p1, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    iget-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mActivityManager:Landroid/app/ActivityManager;

    .line 69
    return-void
.end method

.method private createPayload()[B
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->makeMusicSharePayload(Z)[B

    move-result-object v0

    goto :goto_5
.end method

.method private static final getNFCConnectionInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x6

    .line 256
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 257
    .local v4, "rn":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1234567890"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, "uuid":Ljava/lang/StringBuilder;
    const v6, 0xffffff

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "ran":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 261
    .local v2, "len":I
    if-le v2, v8, :cond_21

    .line 262
    const/4 v2, 0x6

    .line 265
    :cond_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-lt v0, v2, :cond_5d

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "U6"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "V4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "info":Ljava/lang/String;
    sget-boolean v6, Lcom/android/nfc/lgsharing/MusicShareDataParser;->DBG:Z

    const-string v7, "MusicShareDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getConnectionInfo - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 272
    return-object v1

    .line 266
    .end local v1    # "info":Ljava/lang/String;
    :cond_5d
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method private static final getVersion()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0000000000"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, "version":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "ver":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 243
    .local v2, "len":I
    if-le v2, v9, :cond_15

    .line 244
    const/4 v2, 0x4

    .line 247
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x3

    .local v1, "j":I
    :goto_17
    if-lt v0, v2, :cond_38

    .line 251
    sget-boolean v5, Lcom/android/nfc/lgsharing/MusicShareDataParser;->DBG:Z

    const-string v6, "MusicShareDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getVersion - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4, v10, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 248
    :cond_38
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_17
.end method

.method private isExistRunningPackage()Z
    .registers 11

    .prologue
    .line 214
    const/4 v6, 0x0

    .line 215
    .local v6, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 216
    .local v3, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_35

    .line 224
    :goto_11
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v7, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 227
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v7, 0x10000

    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 228
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_59

    .line 235
    const/4 v7, 0x1

    :goto_34
    return v7

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_35
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 217
    .local v2, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_b

    .line 218
    move-object v6, v2

    .line 219
    const-string v7, "MusicShareDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isExistRunningPackage : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 228
    .end local v2    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_59
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 231
    const/4 v7, 0x0

    goto :goto_34
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "mgid":[I
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 279
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const-string v4, "com.lge.musicshare"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;I)[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_2e

    move-result-object v1

    .line 285
    if-eqz v1, :cond_44

    array-length v4, v1

    if-lez v4, :cond_44

    .line 286
    sget-boolean v3, Lcom/android/nfc/lgsharing/MusicShareDataParser;->DBG:Z

    const-string v4, "MusicShareDataParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MusicShare mgid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v3, 0x1

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_2d
    return v3

    .line 280
    :catch_2e
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MusicShareDataParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_44
    sget-boolean v4, Lcom/android/nfc/lgsharing/MusicShareDataParser;->DBG:Z

    const-string v5, "MusicShareDataParser"

    const-string v6, "MusicShare is not exist, should be false"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private makeMusicSharePayload(Z)[B
    .registers 15
    .param p1, "isServer"    # Z

    .prologue
    .line 97
    const-string v10, "MusicShareDataParser"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "makeMusicSharePayload : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v9, "payloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 101
    .local v3, "btadapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_21

    .line 102
    const/4 v7, 0x0

    .line 145
    :cond_20
    :goto_20
    return-object v7

    .line 104
    :cond_21
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2f

    .line 106
    :cond_2d
    const/4 v7, 0x0

    goto :goto_20

    .line 110
    :cond_2f
    if-eqz p1, :cond_88

    const/4 v10, 0x1

    :goto_32
    iput-byte v10, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    .line 111
    iput-object v0, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAddress:Ljava/lang/String;

    .line 113
    monitor-enter p0

    .line 114
    const/16 v10, 0x10

    :try_start_39
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 118
    .local v2, "bAddress":[B
    array-length v10, v2

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    array-length v11, v2

    const/4 v10, 0x0

    :goto_59
    if-lt v10, v11, :cond_8a

    .line 123
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-byte v10, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v10, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->getNFCConnectionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mConnectionInfo:Ljava/lang/String;

    .line 128
    iget-object v10, p0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mConnectionInfo:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 130
    .local v6, "infoBytes":[B
    array-length v10, v6

    if-nez v10, :cond_96

    .line 131
    monitor-exit p0

    const/4 v7, 0x0

    goto :goto_20

    .line 110
    .end local v2    # "bAddress":[B
    .end local v6    # "infoBytes":[B
    :cond_88
    const/4 v10, 0x2

    goto :goto_32

    .line 119
    .restart local v2    # "bAddress":[B
    :cond_8a
    aget-byte v1, v2, v10

    .line 120
    .local v1, "addressbyte":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 133
    .end local v1    # "addressbyte":B
    .restart local v6    # "infoBytes":[B
    :cond_96
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    array-length v10, v6

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    array-length v11, v6

    const/4 v10, 0x0

    :goto_ab
    if-lt v10, v11, :cond_cc

    .line 113
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_39 .. :try_end_ae} :catchall_d8

    .line 139
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Byte;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Byte;

    .line 141
    .local v8, "payloadElement":[Ljava/lang/Byte;
    array-length v10, v8

    new-array v7, v10, [B

    .line 142
    .local v7, "payload":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_be
    array-length v10, v8

    if-ge v4, v10, :cond_20

    .line 143
    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v7, v4

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    .line 135
    .end local v4    # "i":I
    .end local v7    # "payload":[B
    .end local v8    # "payloadElement":[Ljava/lang/Byte;
    :cond_cc
    :try_start_cc
    aget-byte v5, v6, v10

    .line 136
    .local v5, "infoByte":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v10, v10, 0x1

    goto :goto_ab

    .line 113
    .end local v2    # "bAddress":[B
    .end local v5    # "infoByte":B
    .end local v6    # "infoBytes":[B
    :catchall_d8
    move-exception v10

    monitor-exit p0
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_d8

    throw v10
.end method


# virtual methods
.method public getNdefRecord()Landroid/nfc/NdefRecord;
    .registers 7

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x4

    const-string v3, "lge.com:Sharingpackage-com.lge.musicshare"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {p0}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->createPayload()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 76
    :goto_13
    return-object v1

    .line 74
    :catch_14
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicShareDataParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNdefRecord exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public parseMusicSharePayload([B)V
    .registers 22
    .param p1, "payload"    # [B

    .prologue
    .line 149
    const/4 v13, 0x0

    .line 150
    .local v13, "version":B
    const-string v11, ""

    .line 151
    .local v11, "remoteaddress":Ljava/lang/String;
    const-string v5, ""

    .line 152
    .local v5, "info":Ljava/lang/String;
    const/4 v9, 0x0

    .line 153
    .local v9, "isRemoteServer":Z
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-ge v14, v15, :cond_16

    .line 154
    :cond_e
    const-string v14, "MusicShareDataParser"

    const-string v15, "parseMusicSharePayload - payload is null!"

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_15
    return-void

    .line 158
    :cond_16
    const/4 v3, 0x0

    .line 160
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v13, p1, v3

    move v3, v4

    .line 161
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_1c
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-lt v3, v14, :cond_c5

    .line 190
    const-string v14, "MusicShareDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "parseMusicSharePayload : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "version : %02x, Address : %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v11, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isRemoteServer : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mAddress:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_120

    const/4 v7, 0x1

    .line 193
    .local v7, "initialServer":Z
    :goto_66
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->isExistRunningPackage()Z

    move-result v14

    if-eqz v14, :cond_123

    const/4 v12, 0x0

    .line 195
    .local v12, "requirepopup":Z
    :goto_6d
    const-string v15, "MusicShareDataParser"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "Send Intent to Bluetooth side : "

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "mServerStatus : %d, initialServer : %d, requirepopup : %d"

    const/4 v14, 0x3

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v18, v14

    const/16 v19, 0x1

    if-eqz v7, :cond_126

    const/4 v14, 0x1

    :goto_91
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v18, v19

    const/16 v19, 0x2

    if-eqz v12, :cond_129

    const/4 v14, 0x1

    :goto_9c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12c

    if-nez v9, :cond_12c

    .line 197
    const-string v14, "MusicShareDataParser"

    const-string v15, "Do not need to send intent to Bluetooth"

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 162
    .end local v7    # "initialServer":Z
    .end local v12    # "requirepopup":Z
    :cond_c5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v2, p1, v3

    .line 163
    .local v2, "header":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v10, p1, v4

    .line 165
    .local v10, "length":B
    packed-switch v2, :pswitch_data_17a

    .line 185
    const-string v14, "MusicShareDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "undefined header - "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 167
    :pswitch_e6
    add-int v14, v3, v10

    move-object/from16 v0, p1

    invoke-static {v0, v3, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 168
    .local v1, "addressBytes":[B
    new-instance v11, Ljava/lang/String;

    .end local v11    # "remoteaddress":Ljava/lang/String;
    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    .line 169
    .restart local v11    # "remoteaddress":Ljava/lang/String;
    add-int/2addr v3, v10

    .line 170
    goto/16 :goto_1c

    .line 172
    .end local v1    # "addressBytes":[B
    :pswitch_f6
    const/4 v14, 0x1

    if-eq v10, v14, :cond_103

    .line 173
    const-string v14, "MusicShareDataParser"

    const-string v15, "invalid parsing"

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    add-int/2addr v3, v10

    .line 175
    goto/16 :goto_1c

    .line 177
    :cond_103
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v14, p1, v3

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10e

    const/4 v9, 0x1

    :goto_10b
    move v3, v4

    .line 178
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1c

    .line 177
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10e
    const/4 v9, 0x0

    goto :goto_10b

    .line 180
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_110
    add-int v14, v3, v10

    move-object/from16 v0, p1

    invoke-static {v0, v3, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 181
    .local v6, "infoBytes":[B
    new-instance v5, Ljava/lang/String;

    .end local v5    # "info":Ljava/lang/String;
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 182
    .restart local v5    # "info":Ljava/lang/String;
    add-int/2addr v3, v10

    .line 183
    goto/16 :goto_1c

    .line 192
    .end local v2    # "header":B
    .end local v6    # "infoBytes":[B
    .end local v10    # "length":B
    :cond_120
    const/4 v7, 0x0

    goto/16 :goto_66

    .line 193
    .restart local v7    # "initialServer":Z
    :cond_123
    const/4 v12, 0x1

    goto/16 :goto_6d

    .line 195
    .restart local v12    # "requirepopup":Z
    :cond_126
    const/4 v14, 0x0

    goto/16 :goto_91

    :cond_129
    const/4 v14, 0x0

    goto/16 :goto_9c

    .line 201
    :cond_12c
    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.lge.bluetooth.musicshare.ServiceStart"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, "intent":Landroid/content/Intent;
    const-string v14, "com.lge.bluetooth.musicshare.extra.CallerId"

    const-string v15, "NFC"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v15, "com.lge.bluetooth.musicshare.extra.ROLE_SERVER"

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mServerStatus:B

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_177

    const/4 v14, 0x1

    :goto_147
    invoke-virtual {v8, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const-string v14, "com.lge.bluetooth.musicshare.extra.FAKE_ROLE_SERVER"

    invoke-virtual {v8, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const-string v14, "com.lge.bluetooth.musicshare.extra.ACTION_POPUP"

    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const-string v14, "com.lge.bluetooth.musicshare.extra.PEER_ROLE_SERVER"

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v14, "com.lge.bluetooth.musicshare.extra.CONNECTION_INFO"

    invoke-virtual {v8, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v14, "com.lge.bluetooth.musicshare.extra.PEER_ADDR"

    invoke-virtual {v8, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v14, "com.lge.bluetooth.musicshare.extra.CONNECTION_INFO_LOCAL"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mConnectionInfo:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v14, v8, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_15

    .line 203
    :cond_177
    const/4 v14, 0x0

    goto :goto_147

    .line 165
    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_f6
        :pswitch_110
    .end packed-switch
.end method

.method public parseNdefRecord(Landroid/nfc/NdefRecord;)Z
    .registers 4
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 81
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    const-string v1, "lge.com:Sharingpackage-com.lge.musicshare"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    .line 82
    :cond_12
    const/4 v0, 0x0

    .line 86
    :goto_13
    return v0

    .line 85
    :cond_14
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->parseMusicSharePayload([B)V

    .line 86
    const/4 v0, 0x1

    goto :goto_13
.end method
