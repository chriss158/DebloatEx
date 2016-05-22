.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    }
.end annotation


# static fields
.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field protected static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field protected static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field protected static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field protected static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final DBG:Z

.field protected static final RTD_COLLISION_RESOLUTION:[B

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field protected static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mLocalBluetoothAddress:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    .line 46
    const-string v0, "application/vnd.bluetooth.ep.oob"

    .line 47
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 46
    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 48
    const-string v0, "application/vnd.bluetooth.le.oob"

    .line 49
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 51
    const-string v0, "nokia.com:bt"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    .line 64
    return-void

    .line 53
    nop

    :array_2c
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 94
    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 467
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v3, v2

    if-lt v0, v3, :cond_e

    .line 472
    return-object v1

    .line 469
    :cond_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 97
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 98
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 99
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 451
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 452
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x3

    if-lt v1, v3, :cond_b

    .line 460
    return-object v0

    .line 456
    :cond_b
    aget-byte v2, v0, v1

    .line 457
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 458
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_40

    .line 243
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v0, 0x0

    .line 246
    .local v0, "bluetoothActivating":Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 247
    sget-boolean v2, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    if-eqz v2, :cond_40

    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Waiting for incoming transfer, ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "bluetoothActivating":Z
    :cond_40
    return-object v1

    .line 243
    :cond_41
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 104
    .local v0, "payload":[B
    if-eqz p1, :cond_1e

    move v1, v2

    .line 105
    :goto_9
    int-to-byte v1, v1

    .line 104
    aput-byte v1, v0, v4

    .line 106
    aput-byte v3, v0, v3

    .line 107
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 108
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 109
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_1e
    move v1, v3

    .line 105
    goto :goto_9
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    .line 152
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 152
    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 119
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 120
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 122
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_18
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 124
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 127
    :cond_24
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 128
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_3f

    .line 131
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 122
    .end local v0    # "addressBytes":[B
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .registers 4

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_6

    .line 140
    const/4 v1, 0x0

    .line 146
    :goto_5
    return-object v1

    .line 143
    :cond_6
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    .line 147
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 146
    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_5
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 173
    new-array v0, v8, [Landroid/nfc/NdefRecord;

    .line 174
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v0, v6

    .line 177
    .local v0, "messages":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 179
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 181
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 182
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 186
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 188
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v5, 0x0

    .line 158
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 159
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 161
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 162
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 166
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 168
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .registers 12
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    if-nez p1, :cond_5

    .line 226
    :cond_4
    :goto_4
    return-object v4

    .line 198
    :cond_5
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_4

    .line 200
    sget-boolean v6, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    if-eqz v6, :cond_25

    const-string v6, "NfcHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getIncomingHandoverData():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_25
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    aget-object v2, v6, v5

    .line 203
    .local v2, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 207
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    array-length v7, v6

    :goto_44
    if-lt v5, v7, :cond_52

    .line 221
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 222
    .local v3, "hs":Landroid/nfc/NdefMessage;
    if-eqz v3, :cond_4

    .line 223
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v4, v3, v0}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    goto :goto_4

    .line 213
    .end local v3    # "hs":Landroid/nfc/NdefMessage;
    :cond_52
    aget-object v1, v6, v5

    .line 214
    .local v1, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_73

    .line 215
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v8

    sget-object v9, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 216
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 213
    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_44
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 3
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .registers 16
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    .line 258
    .local v7, "payload":[B
    if-eqz v7, :cond_a

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_c

    :cond_a
    const/4 v9, 0x0

    .line 286
    :goto_b
    return v9

    .line 260
    :cond_c
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    new-array v8, v9, [B

    .line 261
    .local v8, "payloadNdef":[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-static {v7, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 264
    :try_start_19
    new-instance v6, Landroid/nfc/NdefMessage;

    invoke-direct {v6, v8}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_1e
    .catch Landroid/nfc/FormatException; {:try_start_19 .. :try_end_1e} :catch_28

    .line 269
    .local v6, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v6}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_24
    if-lt v9, v11, :cond_2b

    .line 286
    const/4 v9, 0x1

    goto :goto_b

    .line 266
    .end local v6    # "msg":Landroid/nfc/NdefMessage;
    :catch_28
    move-exception v9

    const/4 v9, 0x0

    goto :goto_b

    .line 269
    .restart local v6    # "msg":Landroid/nfc/NdefMessage;
    :cond_2b
    aget-object v1, v10, v9

    .line 270
    .local v1, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 271
    .local v0, "acPayload":[B
    if-eqz v0, :cond_5a

    .line 272
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 273
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit8 v5, v12, 0x3

    .line 274
    .local v5, "cps":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v4, v12, 0xff

    .line 275
    .local v4, "carrierRefLength":I
    array-length v12, p2

    if-eq v4, v12, :cond_48

    const/4 v9, 0x0

    goto :goto_b

    .line 277
    :cond_48
    new-array v3, v4, [B

    .line 278
    .local v3, "carrierRefId":[B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 279
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 281
    const/4 v9, 0x2

    if-ne v5, v9, :cond_58

    const/4 v9, 0x1

    goto :goto_b

    :cond_58
    const/4 v9, 0x0

    goto :goto_b

    .line 269
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "carrierRefId":[B
    .end local v4    # "carrierRefLength":I
    .end local v5    # "cps":I
    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_24
.end method

.method public isHandoverSupported()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 11
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 406
    new-instance v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v3}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 407
    .local v3, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    iput-boolean v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 408
    const/4 v6, 0x2

    iput v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 412
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_35
    .catch Ljava/nio/BufferUnderflowException; {:try_start_c .. :try_end_f} :catch_57

    move-result v6

    if-gtz v6, :cond_1f

    .line 446
    :goto_12
    iget-boolean v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_1e

    iget-object v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_1e

    const-string v6, ""

    iput-object v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 447
    :cond_1e
    :goto_1e
    return-object v3

    .line 414
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 415
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 416
    .local v5, "type":I
    sparse-switch v5, :sswitch_data_7c

    .line 437
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_34} :catch_35
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1f .. :try_end_34} :catch_57

    goto :goto_c

    .line 442
    .end local v1    # "len":I
    .end local v5    # "type":I
    :catch_35
    move-exception v6

    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: invalid BT address"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 418
    .restart local v1    # "len":I
    .restart local v5    # "type":I
    :sswitch_3e
    :try_start_3e
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 419
    .local v0, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 421
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_56} :catch_35
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_c

    .line 444
    .end local v0    # "address":[B
    .end local v1    # "len":I
    .end local v5    # "type":I
    :catch_57
    move-exception v6

    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: payload shorter than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 424
    .restart local v1    # "len":I
    .restart local v5    # "type":I
    :sswitch_60
    :try_start_60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 425
    .local v4, "role":B
    if-ne v4, v8, :cond_c

    .line 427
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    goto :goto_1e

    .line 432
    .end local v4    # "role":B
    :sswitch_6a
    add-int/lit8 v6, v1, -0x1

    new-array v2, v6, [B

    .line 433
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 434
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_7a} :catch_35
    .catch Ljava/nio/BufferUnderflowException; {:try_start_60 .. :try_end_7a} :catch_57

    goto :goto_c

    .line 416
    nop

    :sswitch_data_7c
    .sparse-switch
        0x9 -> :sswitch_6a
        0x1b -> :sswitch_3e
        0x1c -> :sswitch_60
    .end sparse-switch
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 313
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 314
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 315
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 318
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_2f

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 319
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    .line 338
    :goto_2e
    return-object v3

    .line 323
    :cond_2f
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_4e

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 324
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_2e

    .line 328
    :cond_4e
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5e

    .line 329
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_2e

    .line 334
    :cond_5e
    const/4 v3, 0x4

    if-ne v1, v3, :cond_76

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 335
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_2e

    .line 338
    :cond_76
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_8
    if-lt v2, v5, :cond_c

    .line 309
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return-object v0

    .line 293
    :cond_c
    aget-object v1, v4, v2

    .line 294
    .local v1, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    if-ne v6, v8, :cond_42

    .line 295
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 296
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 297
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    goto :goto_b

    .line 303
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_42
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    if-ne v6, v8, :cond_61

    .line 304
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 305
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    goto :goto_b

    .line 293
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 9
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 366
    new-instance v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v3}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 367
    .local v3, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 370
    const/4 v5, 0x2

    :try_start_9
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 372
    .local v0, "address":[B
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 373
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 375
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1e} :catch_44
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_1e} :catch_5e

    move-result v5

    if-gtz v5, :cond_2e

    .line 401
    .end local v0    # "address":[B
    :goto_21
    iget-boolean v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_2d

    iget-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_2d

    const-string v5, ""

    iput-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 402
    :cond_2d
    return-object v3

    .line 377
    .restart local v0    # "address":[B
    :cond_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 378
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 379
    .local v4, "type":I
    packed-switch v4, :pswitch_data_7c

    .line 392
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_43} :catch_44
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2e .. :try_end_43} :catch_5e

    goto :goto_1b

    .line 397
    .end local v0    # "address":[B
    .end local v1    # "len":I
    .end local v4    # "type":I
    :catch_44
    move-exception v5

    const-string v5, "NfcHandover"

    const-string v6, "BT OOB: invalid BT address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 381
    .restart local v0    # "address":[B
    .restart local v1    # "len":I
    .restart local v4    # "type":I
    :pswitch_4d
    add-int/lit8 v5, v1, -0x1

    :try_start_4f
    new-array v2, v5, [B

    .line 382
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 383
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_5d} :catch_44
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4f .. :try_end_5d} :catch_5e

    goto :goto_1b

    .line 399
    .end local v0    # "address":[B
    .end local v1    # "len":I
    .end local v2    # "nameBytes":[B
    .end local v4    # "type":I
    :catch_5e
    move-exception v5

    const-string v5, "NfcHandover"

    const-string v6, "BT OOB: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 386
    .restart local v0    # "address":[B
    .restart local v1    # "len":I
    .restart local v4    # "type":I
    :pswitch_67
    :try_start_67
    iget-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_1b

    .line 387
    add-int/lit8 v5, v1, -0x1

    new-array v2, v5, [B

    .line 388
    .restart local v2    # "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 389
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_7b} :catch_44
    .catch Ljava/nio/BufferUnderflowException; {:try_start_67 .. :try_end_7b} :catch_5e

    goto :goto_1b

    .line 379
    :pswitch_data_7c
    .packed-switch 0x8
        :pswitch_4d
        :pswitch_67
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 8
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 342
    new-instance v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v3}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 343
    .local v3, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 346
    const/4 v4, 0x1

    :try_start_9
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    const/4 v4, 0x6

    new-array v0, v4, [B

    .line 348
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 349
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 350
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 351
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 353
    .local v2, "nameLength":I
    new-array v1, v2, [B

    .line 354
    .local v1, "nameBytes":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 355
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_34} :catch_41
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_34} :catch_4a

    .line 361
    .end local v0    # "address":[B
    .end local v1    # "nameBytes":[B
    .end local v2    # "nameLength":I
    :goto_34
    iget-boolean v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v4, :cond_40

    iget-object v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v4, :cond_40

    const-string v4, ""

    iput-object v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 362
    :cond_40
    return-object v3

    .line 357
    :catch_41
    move-exception v4

    const-string v4, "NfcHandover"

    const-string v5, "nokia: invalid BT address"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 359
    :catch_4a
    move-exception v4

    const-string v4, "NfcHandover"

    const-string v5, "nokia: payload shorter than expected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
