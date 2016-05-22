.class public Lcom/android/nfc/handover/LHandoverDataParser;
.super Lcom/android/nfc/handover/HandoverDataParser;
.source "LHandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;,
        Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;,
        Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;,
        Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;
    }
.end annotation


# static fields
.field static final COMPARE_ERROR:I = 0x0

.field static DBG:Z = false

.field static final DEFAULT_BT_LOCALNAME:Ljava/lang/String; = "LGBeamDevice"

.field static final NOT_REQUIRE_HANDOVER:I = 0x3

.field static final REQUIRE_SEND_HANDOVER_REQUEST:I = 0x1

.field static final REQUIRE_SEND_HANDOVER_SELECT:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field TYPE_BT_OOB_STR:Ljava/lang/String;

.field TYPE_HC_STR:Ljava/lang/String;

.field TYPE_HR_STR:Ljava/lang/String;

.field TYPE_HS_STR:Ljava/lang/String;

.field mAlreadyPreparePairing:Z

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandoverBeamTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

.field protected mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

.field mWPSsendRequestData:Landroid/nfc/NdefMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "LHandoverDataParser"

    sput-object v0, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HR_STR:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HS_STR:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_BT_OOB_STR:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HC_STR:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mAlreadyPreparePairing:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    .line 111
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 113
    invoke-static {}, Lcom/android/nfc/handover/LWPSHandoverManager;->getInstance()Lcom/android/nfc/handover/LWPSHandoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverDataParser;->makeBeamTitleMap()V

    .line 115
    return-void
.end method

.method static addressToBytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 538
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v3, v2

    if-lt v0, v3, :cond_e

    .line 542
    return-object v1

    .line 539
    :cond_e
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public checkHandoverClientCollision()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 561
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    if-nez v1, :cond_6

    .line 569
    :cond_5
    :goto_5
    return v0

    .line 565
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->sendRetry:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    if-ne v1, v2, :cond_16

    .line 566
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HandoverRequestMessageRetry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_16
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->Requester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    if-eq v1, v2, :cond_5

    .line 570
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->INIT:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    if-eq v1, v2, :cond_5

    .line 569
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public checkWPSHandover(Landroid/nfc/NdefMessage;)Z
    .registers 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "checkWPS":Z
    if-nez p1, :cond_5

    .line 325
    :cond_4
    :goto_4
    return v2

    .line 315
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v1, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p0, p1, v1}, Lcom/android/nfc/handover/LHandoverDataParser;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 318
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 322
    const-string v2, "application/vnd.wfa.wsc"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 323
    const/4 v0, 0x1

    :cond_26
    move v2, v0

    .line 325
    goto :goto_4
.end method

.method compareRandomNumber([B)I
    .registers 15
    .param p1, "receiveRandomNumber"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, "sent_request_random":[B
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    iget-object v7, v7, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequestRandomNumber:[B

    if-eqz v7, :cond_19

    .line 490
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    iget-object v7, v7, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequestRandomNumber:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sent_request_random":[B
    check-cast v3, [B

    .line 492
    .restart local v3    # "sent_request_random":[B
    :cond_19
    move-object v0, p1

    .line 494
    .local v0, "receive_request_random":[B
    if-eqz v3, :cond_1e

    if-nez v0, :cond_29

    .line 495
    :cond_1e
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Not required collision check."

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 529
    :goto_28
    return v4

    .line 499
    :cond_29
    sget-boolean v7, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v8, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v9, "Random : send %02x %02x, receive : %02x %02x"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 500
    aget-byte v11, v3, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v12

    aget-byte v11, v3, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v4

    .line 501
    aget-byte v11, v0, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v6

    aget-byte v11, v0, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v5

    .line 499
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 504
    sget-boolean v5, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_1"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 508
    :cond_69
    aget-byte v7, v3, v4

    and-int/lit16 v7, v7, 0xff

    div-int/lit8 v2, v7, 0x2

    .line 509
    .local v2, "sent_lbs":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    div-int/lit8 v1, v7, 0x2

    .line 511
    .local v1, "receivee_lbs":I
    if-ne v2, v1, :cond_9f

    .line 512
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-gt v7, v8, :cond_89

    .line 513
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-ne v7, v8, :cond_94

    .line 514
    aget-byte v7, v3, v4

    aget-byte v4, v0, v4

    if-le v7, v4, :cond_94

    .line 515
    :cond_89
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_2"

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 516
    goto :goto_28

    .line 518
    :cond_94
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_3"

    invoke-static {v4, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 519
    goto :goto_28

    .line 522
    :cond_9f
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-gt v7, v8, :cond_b1

    .line 523
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-ne v7, v8, :cond_bd

    .line 524
    aget-byte v7, v3, v4

    aget-byte v4, v0, v4

    if-le v7, v4, :cond_bd

    .line 525
    :cond_b1
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_3"

    invoke-static {v4, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 526
    goto/16 :goto_28

    .line 528
    :cond_bd
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_2"

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 529
    goto/16 :goto_28
.end method

.method createAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 12
    .param p1, "cps"    # B
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 118
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_13

    :cond_11
    move-object v4, v5

    .line 132
    :goto_12
    return-object v4

    .line 121
    :cond_13
    const/4 v2, 0x0

    .line 122
    .local v2, "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    new-array v1, v4, [B

    .line 123
    .local v1, "payload":[B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aput-byte p1, v1, v2

    .line 124
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v8, v7

    move v4, v6

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :goto_34
    if-lt v4, v8, :cond_43

    .line 130
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aput-byte v6, v1, v3

    .line 132
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v6, 0x1

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    invoke-direct {v4, v6, v7, v5, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_12

    .line 126
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :cond_43
    aget-byte v0, v7, v4

    .line 127
    .local v0, "id_byte":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aput-byte v0, v1, v3

    .line 126
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_34
.end method

.method createBluetoothHandoverSelectNdefMessage(I)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "cps"    # I

    .prologue
    .line 428
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 429
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const-string v2, "b"

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/handover/LHandoverDataParser;->createAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 428
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/LHandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 428
    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "addressBytes":[B
    const/4 v3, 0x0

    .line 139
    .local v3, "localName":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v1, v8, [B

    fill-array-data v1, :array_ca

    .line 141
    .local v1, "classofDevice":[B
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 142
    :try_start_e
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v9, :cond_1a

    .line 143
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 147
    :cond_1a
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2f

    .line 148
    :cond_26
    sget-object v9, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v10, "BluetoothAddress is wrong"

    invoke-static {v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    monitor-exit v8

    .line 186
    :goto_2e
    return-object v7

    .line 153
    :cond_2f
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/nfc/handover/LHandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    if-nez v0, :cond_3c

    .line 155
    monitor-exit v8

    goto :goto_2e

    .line 141
    :catchall_39
    move-exception v7

    monitor-exit v8
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_39

    throw v7

    .line 159
    :cond_3c
    :try_start_3c
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    if-eqz v7, :cond_51

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_53

    .line 161
    :cond_51
    const-string v3, "LGBeamDevice"

    .line 141
    :cond_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_39

    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, "pos":I
    array-length v7, v0

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    array-length v8, v1

    add-int v2, v7, v8

    .line 167
    .local v2, "length":I
    new-array v4, v2, [B

    .line 169
    .local v4, "payload":[B
    array-length v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v12

    .line 170
    array-length v7, v4

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 171
    add-int/lit8 v5, v5, 0x2

    .line 173
    array-length v7, v0

    invoke-static {v0, v12, v4, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 174
    array-length v7, v0

    add-int/lit8 v5, v7, 0x2

    .line 176
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 177
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x9

    aput-byte v7, v4, v6

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v12, v4, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v5, v7

    .line 181
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 182
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xd

    aput-byte v7, v4, v6

    .line 183
    array-length v7, v1

    invoke-static {v1, v12, v4, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    array-length v7, v1

    add-int/2addr v5, v7

    .line 186
    new-instance v7, Landroid/nfc/NdefRecord;

    const/4 v8, 0x2

    sget-object v9, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v10, v10, [B

    const/16 v11, 0x62

    aput-byte v11, v10, v12

    invoke-direct {v7, v8, v9, v10, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto/16 :goto_2e

    .line 139
    :array_ca
    .array-data 1
        0xct
        0x2t
        0x58t
    .end array-data
.end method

.method createEmptyHandoverSelectMessage()Landroid/nfc/NdefMessage;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 245
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v2, "createEmptyHandoverSelectMessage"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v3, [B

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/handover/LHandoverDataParser;->createHandoverSelectNdefRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 232
    sget-object v1, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v2, "createHandoverRequestMessage"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_d

    .line 240
    :goto_c
    return-object v0

    .line 238
    :cond_d
    :try_start_d
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_c

    .line 240
    :catch_12
    move-exception v1

    goto :goto_c
.end method

.method createHandoverRequestNdefRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 14
    .param p1, "cps"    # [B
    .param p2, "carrierDataReference"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 276
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    array-length v6, p1

    if-eqz v6, :cond_d

    array-length v6, p1

    array-length v8, p2

    if-eq v6, v8, :cond_f

    :cond_d
    move-object v6, v7

    .line 304
    :goto_e
    return-object v6

    .line 280
    :cond_f
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    .line 281
    .local v5, "records":[Landroid/nfc/NdefRecord;
    invoke-static {}, Lcom/android/nfc/handover/LHandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v10

    .line 283
    iget-object v6, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    if-eqz v6, :cond_22

    aget-object v6, v5, v10

    if-nez v6, :cond_29

    .line 284
    :cond_22
    const-string v6, "Invalid Sequence"

    invoke-static {v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;)V

    move-object v6, v7

    .line 285
    goto :goto_e

    .line 288
    :cond_29
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    aget-object v6, v5, v10

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, v8, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequestRandomNumber:[B

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    array-length v6, p1

    if-lt v0, v6, :cond_6e

    .line 294
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-direct {v1, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 295
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 297
    .local v2, "nestedPayload":[B
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 298
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 301
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v4, v6, [B

    .line 302
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 304
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v8, 0x1

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-direct {v6, v8, v9, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_e

    .line 291
    .end local v1    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v2    # "nestedPayload":[B
    .end local v3    # "payload":Ljava/nio/ByteBuffer;
    .end local v4    # "payloadBytes":[B
    :cond_6e
    add-int/lit8 v6, v0, 0x1

    aget-byte v8, p1, v0

    aget-object v9, p2, v0

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/handover/LHandoverDataParser;->createAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v8

    aput-object v8, v5, v6

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method createHandoverSelectNdefRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 13
    .param p1, "cps"    # [B
    .param p2, "carrierDataReference"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 250
    new-array v2, v8, [B

    .line 252
    .local v2, "nestedPayload":[B
    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    array-length v6, p1

    if-lez v6, :cond_1e

    array-length v6, p1

    array-length v7, p2

    if-ne v6, v7, :cond_1e

    .line 253
    array-length v6, p1

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    .line 254
    .local v5, "records":[Landroid/nfc/NdefRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v6, p1

    if-lt v0, v6, :cond_46

    .line 257
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-direct {v1, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 258
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 261
    .end local v0    # "i":I
    .end local v1    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "records":[Landroid/nfc/NdefRecord;
    :cond_1e
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 262
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    array-length v6, v2

    if-lez v6, :cond_30

    .line 265
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    :cond_30
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v4, v6, [B

    .line 269
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 271
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v7, 0x1

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v6

    .line 255
    .end local v3    # "payload":Ljava/nio/ByteBuffer;
    .end local v4    # "payloadBytes":[B
    .restart local v0    # "i":I
    .restart local v5    # "records":[Landroid/nfc/NdefRecord;
    :cond_46
    aget-byte v6, p1, v0

    aget-object v7, p2, v0

    invoke-virtual {p0, v6, v7}, Lcom/android/nfc/handover/LHandoverDataParser;->createAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public getBeamTitleString(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .registers 12
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    .line 580
    if-nez p1, :cond_4

    .line 598
    :cond_3
    :goto_3
    return-object v4

    .line 583
    :cond_4
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 584
    .local v1, "records":[Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-eqz v5, :cond_3

    .line 588
    array-length v6, v1

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 589
    .local v0, "record":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_18

    .line 588
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 592
    :cond_18
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mHandoverBeamTitle:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 593
    .local v3, "titleValue":Ljava/lang/Integer;
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 594
    .local v2, "titleResource":I
    :goto_2f
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_15

    if-lez v2, :cond_15

    .line 595
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 593
    .end local v2    # "titleResource":I
    :cond_40
    const/4 v2, -0x1

    goto :goto_2f
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .registers 15
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 360
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    .line 361
    .local v0, "beamManager":Lcom/android/nfc/beam/LBeamManager;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/nfc/beam/LBeamManager;->isBeamInProgress()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 362
    :cond_c
    new-instance v9, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/nfc/handover/LHandoverDataParser;->createBluetoothHandoverSelectNdefMessage(I)Landroid/nfc/NdefMessage;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V

    .line 424
    :goto_18
    return-object v9

    .line 365
    :cond_19
    sget-boolean v9, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v10, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getIncomingHandoverData : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v3, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/handover/LHandoverDataParser;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 371
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HR_STR:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 372
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_BT_OOB_STR:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 373
    const-string v9, "application/vnd.wfa.wsc"

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 374
    :cond_4f
    const/4 v9, 0x0

    goto :goto_18

    .line 379
    :cond_51
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v4, "powerStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HR_STR:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v9, v4}, Lcom/android/nfc/handover/LHandoverDataParser;->parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 383
    .local v1, "collisionRecord":Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_6a

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 384
    :cond_6a
    const/4 v9, 0x0

    goto :goto_18

    .line 387
    :cond_6c
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    if-nez v9, :cond_72

    .line 388
    const/4 v9, 0x0

    goto :goto_18

    .line 391
    :cond_72
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/LHandoverDataParser;->compareRandomNumber([B)I

    move-result v6

    .line 392
    .local v6, "result_collision":I
    const/4 v9, 0x3

    if-eq v6, v9, :cond_7f

    if-nez v6, :cond_87

    .line 393
    :cond_7f
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    sget-object v10, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->Requester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    iput-object v10, v9, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    .line 394
    const/4 v9, 0x0

    goto :goto_18

    .line 395
    :cond_87
    const/4 v9, 0x1

    if-ne v6, v9, :cond_92

    .line 396
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    sget-object v10, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->sendRetry:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    iput-object v10, v9, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    .line 397
    const/4 v9, 0x0

    goto :goto_18

    .line 399
    :cond_92
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    sget-object v10, Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;->Selector:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    iput-object v10, v9, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverDataParser$HandoverStatusType;

    .line 402
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 404
    .local v5, "record":[Landroid/nfc/NdefRecord;
    invoke-static {}, Lcom/android/nfc/handover/LWPSHandoverManager;->getSupportWPSHandover()Z

    move-result v9

    if-eqz v9, :cond_10a

    array-length v9, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_10a

    .line 405
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    .line 406
    .local v7, "types":[B
    const-string v9, "application/vnd.wfa.wsc"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 407
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 408
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v8, :cond_f3

    .line 409
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_d5

    .line 410
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_f3

    .line 411
    :cond_d5
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    invoke-virtual {v9, p1}, Lcom/android/nfc/handover/LWPSHandoverManager;->setHandoverRequestMessage(Landroid/nfc/NdefMessage;)I

    .line 412
    new-instance v10, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v11, 0xd

    if-ne v9, v11, :cond_f1

    const/4 v9, 0x1

    :goto_e5
    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/LHandoverDataParser;->getWPSSelectMessage(B)Landroid/nfc/NdefMessage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v9, v11, v12}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V

    move-object v9, v10

    goto/16 :goto_18

    :cond_f1
    const/4 v9, 0x2

    goto :goto_e5

    .line 414
    :cond_f3
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mContext:Landroid/content/Context;

    const v10, 0x7f080043

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    .line 415
    new-instance v9, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/nfc/handover/LHandoverDataParser;->getWPSSelectMessage(B)Landroid/nfc/NdefMessage;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V

    goto/16 :goto_18

    .line 419
    .end local v7    # "types":[B
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_10a
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v2

    .line 420
    .local v2, "incomingHandoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    if-eqz v2, :cond_118

    .line 421
    new-instance v9, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v10}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;Z)V

    goto/16 :goto_18

    .line 424
    :cond_118
    new-instance v9, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;

    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverDataParser;->createEmptyHandoverSelectMessage()Landroid/nfc/NdefMessage;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V

    goto/16 :goto_18
.end method

.method public bridge synthetic getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/LHandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    .registers 10
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v2, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v4, "powerstateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/handover/LHandoverDataParser;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 209
    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_HS_STR:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v5, v4}, Lcom/android/nfc/handover/LHandoverDataParser;->parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;

    .line 211
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverDataParser;->isHandoverSupported()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_BT_OOB_STR:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 212
    :cond_27
    sget-object v5, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v7, "bluetooth is not supported!"

    invoke-static {v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;-><init>()V

    .line 214
    .local v0, "data":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    iput-boolean v6, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->valid:Z

    .line 227
    .end local v0    # "data":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    :goto_35
    return-object v0

    .line 218
    :cond_36
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/nfc/handover/LHandoverDataParser;->TYPE_BT_OOB_STR:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NdefRecord;

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 219
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_67

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 221
    .local v3, "powerstate":B
    :goto_59
    const/4 v5, 0x1

    if-eq v3, v5, :cond_69

    const/4 v5, 0x2

    if-eq v3, v5, :cond_69

    .line 222
    new-instance v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;-><init>()V

    .line 223
    .restart local v0    # "data":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    iput-boolean v6, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->powerState:Z

    goto :goto_35

    .end local v0    # "data":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    .end local v3    # "powerstate":B
    :cond_67
    move v3, v6

    .line 219
    goto :goto_59

    .line 227
    .restart local v3    # "powerstate":B
    :cond_69
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v5

    invoke-static {v5}, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->parse(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    move-result-object v0

    goto :goto_35
.end method

.method public getWPSRequestMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 14
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 329
    if-nez p1, :cond_6

    .line 346
    :cond_5
    :goto_5
    return-object v5

    .line 333
    :cond_6
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 335
    .local v3, "records":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_5

    array-length v6, v3

    if-ne v6, v11, :cond_5

    .line 338
    new-array v0, v11, [B

    aput-byte v11, v0, v10

    .line 339
    .local v0, "cps":[B
    new-array v2, v11, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v2, v10

    .line 340
    .local v2, "id":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/LHandoverDataParser;->createHandoverRequestNdefRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 341
    .local v1, "hrRecord":Landroid/nfc/NdefRecord;
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v6, 0x2

    const-string v7, "application/vnd.wfa.wsc"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aget-object v8, v2, v10

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aget-object v9, v3, v10

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 342
    .local v4, "wpsRecord":Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_39

    if-nez v4, :cond_5a

    .line 343
    :cond_39
    sget-boolean v6, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v7, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Record is null! (hrRecord : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wpsRecord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 346
    :cond_5a
    new-instance v5, Landroid/nfc/NdefMessage;

    new-array v6, v11, [Landroid/nfc/NdefRecord;

    aput-object v4, v6, v10

    invoke-direct {v5, v1, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_5
.end method

.method getWPSSelectMessage(B)Landroid/nfc/NdefMessage;
    .registers 10
    .param p1, "wificps"    # B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 350
    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v1, v6

    .line 351
    .local v1, "idlist":[Ljava/lang/String;
    new-array v2, v7, [B

    aput-byte p1, v2, v6

    .line 352
    .local v2, "powerState":[B
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/LHandoverDataParser;->createHandoverSelectNdefRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 353
    .local v0, "hsRecord":Landroid/nfc/NdefRecord;
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/LWPSHandoverManager;->getHandoverSelectMessage(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 355
    .local v3, "wpsRecord":Landroid/nfc/NdefRecord;
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v5, v7, [Landroid/nfc/NdefRecord;

    aput-object v3, v5, v6

    invoke-direct {v4, v0, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v4
.end method

.method public handoverLLCPActivated()V
    .registers 4

    .prologue
    .line 546
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v2, "handoverLLCPActivated"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    .line 548
    new-instance v0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;-><init>(Lcom/android/nfc/handover/LHandoverDataParser;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    .line 549
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mIsLLCPActicated:Z

    .line 550
    return-void
.end method

.method public handoverLLCPDeactivated()V
    .registers 4

    .prologue
    .line 552
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverDataParser;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverDataParser;->TAG:Ljava/lang/String;

    const-string v2, "handoverLLCPDeactivated"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    if-eqz v0, :cond_15

    .line 555
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;->mIsLLCPActicated:Z

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mInformation:Lcom/android/nfc/handover/LHandoverDataParser$HandoverInformation;

    .line 558
    :cond_15
    return-void
.end method

.method public isHandoverSupported()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_15

    .line 192
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 193
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 195
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 200
    :cond_15
    :goto_15
    return v0

    .line 198
    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public makeBeamTitleMap()V
    .registers 4

    .prologue
    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mHandoverBeamTitle:Ljava/util/HashMap;

    .line 575
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mHandoverBeamTitle:Ljava/util/HashMap;

    const-string v1, "application/vnd.wfa.wsc"

    const v2, 0x7f080042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverDataParser;->mHandoverBeamTitle:Ljava/util/HashMap;

    const-string v1, ""

    const v2, 0x7f080002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method protected parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;
    .registers 16
    .param p1, "chRecord"    # Landroid/nfc/NdefRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefRecord;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/nfc/NdefRecord;"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, "powerStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 454
    .local v0, "collisionRecord":Landroid/nfc/NdefRecord;
    const/4 v3, 0x0

    .line 456
    .local v3, "nestedNdefMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 458
    .local v5, "nestedPayload":[B
    :try_start_10
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_15
    .catch Landroid/nfc/FormatException; {:try_start_10 .. :try_end_15} :catch_22

    .line 462
    .end local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .local v4, "nestedNdefMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v8

    .line 464
    .local v8, "records":[Landroid/nfc/NdefRecord;
    if-eqz v8, :cond_1f

    array-length v9, v8

    const/4 v10, 0x1

    if-ge v9, v10, :cond_25

    .line 465
    :cond_1f
    const/4 v9, 0x0

    move-object v3, v4

    .line 484
    .end local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .end local v8    # "records":[Landroid/nfc/NdefRecord;
    .restart local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :goto_21
    return-object v9

    .line 460
    :catch_22
    move-exception v9

    const/4 v9, 0x0

    goto :goto_21

    .line 468
    .end local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v8    # "records":[Landroid/nfc/NdefRecord;
    :cond_25
    array-length v10, v8

    const/4 v9, 0x0

    :goto_27
    if-lt v9, v10, :cond_2c

    move-object v3, v4

    .end local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v9, v0

    .line 484
    goto :goto_21

    .line 468
    .end local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :cond_2c
    aget-object v7, v8, v9

    .line 469
    .local v7, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    sget-object v12, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 470
    move-object v0, v7

    .line 468
    :cond_3b
    :goto_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 471
    :cond_3e
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    sget-object v12, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 472
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    .line 473
    .local v6, "payload":[B
    array-length v11, v6

    const/4 v12, 0x4

    if-ge v11, v12, :cond_55

    move-object v3, v4

    .end local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v9, v0

    .line 474
    goto :goto_21

    .line 476
    .end local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :cond_55
    const/4 v11, 0x0

    aget-byte v1, v6, v11

    .line 477
    .local v1, "cps":B
    new-instance v2, Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v12, v12, 0x2

    invoke-static {v6, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    .line 478
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_74

    :cond_71
    move-object v3, v4

    .end local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v9, v0

    .line 479
    goto :goto_21

    .line 481
    .end local v3    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :cond_74
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {p2, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method

.method protected parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V
    .registers 9
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/NdefRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-lt v2, v4, :cond_9

    .line 450
    :cond_8
    return-void

    .line 434
    :cond_9
    aget-object v0, v3, v2

    .line 435
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_8

    .line 438
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 440
    .local v1, "recordType":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 444
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_8

    .line 448
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method
