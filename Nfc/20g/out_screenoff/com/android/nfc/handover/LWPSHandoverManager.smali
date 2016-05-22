.class public Lcom/android/nfc/handover/LWPSHandoverManager;
.super Ljava/lang/Object;
.source "LWPSHandoverManager.java"


# static fields
.field private static final DBG:Z

.field private static INSTANCE:Lcom/android/nfc/handover/LWPSHandoverManager; = null

.field private static final LGE_FRAMEWORK2_JAR_LOCATION:Ljava/lang/String; = "system/framework/framework2.jar"

.field private static final LGE_SOFTAP_CLASS_NAME:Ljava/lang/String; = "com.lge.wifi.extension.IWifiSoftAP"

.field private static final LGE_WIFI_MANAGER_CLASS_NAME:Ljava/lang/String; = "com.lge.wifi.extension.LgWifiManager"

.field private static final TAG:Ljava/lang/String; = "LWPSHandoverManager"

.field static final TYPE_WPS_MIMENAME:Ljava/lang/String; = "application/vnd.wfa.wsc"


# instance fields
.field private mGetHandoverSelectMessage:Ljava/lang/reflect/Method;

.field private mGetWifiSoftAPInterface:Ljava/lang/reflect/Method;

.field private mSetHandoverRequestMessage:Ljava/lang/reflect/Method;

.field private mSoftAPClassObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/LWPSHandoverManager;->DBG:Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetWifiSoftAPInterface:Ljava/lang/reflect/Method;

    .line 37
    iput-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSetHandoverRequestMessage:Ljava/lang/reflect/Method;

    .line 38
    iput-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetHandoverSelectMessage:Ljava/lang/reflect/Method;

    .line 40
    iput-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;

    .line 47
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "system/framework/framework2.jar"

    const-class v5, Lcom/android/nfc/handover/LWPSHandoverManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 49
    .local v1, "framework2ClassLoader":Ljava/lang/ClassLoader;
    :try_start_1b
    const-string v4, "com.lge.wifi.extension.LgWifiManager"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "wifiManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "com.lge.wifi.extension.IWifiSoftAP"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_28} :catch_5d

    move-result-object v2

    .line 56
    .local v2, "softAPClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getWifiSoftAPIface"

    invoke-static {v3, v4, v6}, Lcom/android/nfc/handover/LWPSHandoverManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetWifiSoftAPInterface:Ljava/lang/reflect/Method;

    .line 57
    const-string v4, "getWpsNfcHandoverSelect"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v2, v4, v5}, Lcom/android/nfc/handover/LWPSHandoverManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetHandoverSelectMessage:Ljava/lang/reflect/Method;

    .line 58
    const-string v4, "setWpsNfcReportHandover"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v4, v5}, Lcom/android/nfc/handover/LWPSHandoverManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSetHandoverRequestMessage:Ljava/lang/reflect/Method;

    .line 61
    :try_start_52
    iget-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetWifiSoftAPInterface:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_66

    .line 66
    .end local v2    # "softAPClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "wifiManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5c
    return-void

    .line 52
    :catch_5d
    move-exception v4

    const-string v4, "LWPSHandoverManager"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 62
    .restart local v2    # "softAPClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "wifiManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_66
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LWPSHandoverManager"

    const-string v5, "mGetWifiSoftAPInterface Exception"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .registers 9
    .param p0, "bs"    # [B

    .prologue
    const/4 v3, 0x0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v1, "s":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_8
    if-lt v2, v4, :cond_b

    .line 171
    return-object v1

    .line 168
    :cond_b
    aget-byte v0, p0, v2

    .line 169
    .local v0, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private static createStringToPayload(Ljava/lang/String;)[B
    .registers 13
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    .local v3, "len":I
    div-int/lit8 v9, v3, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .line 179
    .local v6, "payloadSplit":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    div-int/lit8 v9, v3, 0x2

    if-lt v2, v9, :cond_2d

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v10, v6

    const/4 v9, 0x0

    :goto_14
    if-lt v9, v10, :cond_3a

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/Byte;

    .line 197
    .local v5, "payloadByte":[Ljava/lang/Byte;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "payloadByte":[Ljava/lang/Byte;
    check-cast v5, [Ljava/lang/Byte;

    .line 198
    .restart local v5    # "payloadByte":[Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v4, v9, [B

    .line 199
    .local v4, "mPayload":[B
    const/4 v2, 0x0

    :goto_29
    array-length v9, v5

    if-lt v2, v9, :cond_4d

    .line 202
    return-object v4

    .line 180
    .end local v1    # "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "mPayload":[B
    .end local v5    # "payloadByte":[Ljava/lang/Byte;
    :cond_2d
    mul-int/lit8 v0, v2, 0x2

    .line 181
    .local v0, "a":I
    add-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 186
    .end local v0    # "a":I
    .restart local v1    # "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_3a
    aget-object v7, v6, v9

    .line 189
    .local v7, "payloadbyte":Ljava/lang/String;
    const/16 v11, 0x10

    :try_start_3e
    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 190
    .local v8, "temp":I
    int-to-byte v11, v8

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_58

    .line 186
    .end local v8    # "temp":I
    :goto_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 200
    .end local v7    # "payloadbyte":Ljava/lang/String;
    .restart local v4    # "mPayload":[B
    .restart local v5    # "payloadByte":[Ljava/lang/Byte;
    :cond_4d
    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v4, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .end local v4    # "mPayload":[B
    .end local v5    # "payloadByte":[Ljava/lang/Byte;
    .restart local v7    # "payloadbyte":Ljava/lang/String;
    :catch_58
    move-exception v11

    goto :goto_4a
.end method

.method public static getInstance()Lcom/android/nfc/handover/LWPSHandoverManager;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/nfc/handover/LWPSHandoverManager;->INSTANCE:Lcom/android/nfc/handover/LWPSHandoverManager;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Lcom/android/nfc/handover/LWPSHandoverManager;

    invoke-direct {v0}, Lcom/android/nfc/handover/LWPSHandoverManager;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/LWPSHandoverManager;->INSTANCE:Lcom/android/nfc/handover/LWPSHandoverManager;

    .line 145
    :cond_b
    sget-object v0, Lcom/android/nfc/handover/LWPSHandoverManager;->INSTANCE:Lcom/android/nfc/handover/LWPSHandoverManager;

    return-object v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameter"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "gsmaclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    .line 163
    :cond_3
    :goto_3
    return-object v0

    .line 153
    :cond_4
    const/4 v0, 0x0

    .line 154
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_3

    .line 156
    :try_start_7
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    goto :goto_3

    .line 158
    :catch_c
    move-exception v1

    const-string v1, "LWPSHandoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMethod Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getSupportWPSHandover()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 132
    const-string v1, "wlan.lge.softapwps"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 133
    sget-boolean v1, Lcom/android/nfc/handover/LWPSHandoverManager;->DBG:Z

    const-string v2, "LWPSHandoverManager"

    const-string v3, "getSupportWPSHandover is false"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "payloads"    # [B

    .prologue
    .line 128
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x2

    const-string v2, "application/vnd.wfa.wsc"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    if-eqz p2, :cond_13

    .end local p2    # "payloads":[B
    :goto_f
    invoke-direct {v0, v1, v2, v3, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    .restart local p2    # "payloads":[B
    :cond_13
    const/4 v4, 0x0

    new-array p2, v4, [B

    goto :goto_f
.end method


# virtual methods
.method public getHandoverSelectMessage(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 16
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 94
    iget-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;

    if-nez v6, :cond_13

    .line 95
    const-string v6, "LWPSHandoverManager"

    const-string v7, "mSoftAPClassObject is null"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/LWPSHandoverManager;->makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 125
    :goto_12
    return-object v6

    .line 98
    :cond_13
    const/4 v5, 0x0

    .line 101
    .local v5, "wpspayloadString":Ljava/lang/String;
    :try_start_14
    iget-object v6, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mGetHandoverSelectMessage:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_39

    .line 107
    :goto_2b
    if-nez v5, :cond_4f

    .line 108
    const-string v6, "LWPSHandoverManager"

    const-string v7, "wpsPayloadString is null"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/LWPSHandoverManager;->makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto :goto_12

    .line 102
    :catch_39
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "LWPSHandoverManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4f
    invoke-static {v5}, Lcom/android/nfc/handover/LWPSHandoverManager;->createStringToPayload(Ljava/lang/String;)[B

    move-result-object v4

    .line 114
    .local v4, "wpspayload":[B
    :try_start_53
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-direct {v2, v4}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_58
    .catch Landroid/nfc/FormatException; {:try_start_53 .. :try_end_58} :catch_78

    .line 120
    .local v2, "payloadMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 121
    .local v3, "payloadRecords":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_73

    array-length v6, v3

    if-ne v6, v13, :cond_73

    aget-object v6, v3, v12

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    const-string v7, "application/vnd.wfa.wsc"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_85

    .line 122
    :cond_73
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/LWPSHandoverManager;->makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto :goto_12

    .line 116
    .end local v2    # "payloadMessage":Landroid/nfc/NdefMessage;
    .end local v3    # "payloadRecords":[Landroid/nfc/NdefRecord;
    :catch_78
    move-exception v6

    const-string v6, "LWPSHandoverManager"

    const-string v7, "getWPSSelectMessage - FormatException"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, v11}, Lcom/android/nfc/handover/LWPSHandoverManager;->makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto :goto_12

    .line 125
    .restart local v2    # "payloadMessage":Landroid/nfc/NdefMessage;
    .restart local v3    # "payloadRecords":[Landroid/nfc/NdefRecord;
    :cond_85
    aget-object v6, v3, v12

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/LWPSHandoverManager;->makeWPSRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    goto :goto_12
.end method

.method public setHandoverRequestMessage(Landroid/nfc/NdefMessage;)I
    .registers 10
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 69
    if-eqz p1, :cond_8

    iget-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;

    if-nez v4, :cond_9

    .line 90
    :cond_8
    :goto_8
    return v2

    .line 73
    :cond_9
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 78
    .local v3, "wpspayload":[B
    if-eqz v3, :cond_8

    array-length v4, v3

    if-lt v4, v5, :cond_8

    .line 82
    invoke-static {v3}, Lcom/android/nfc/handover/LWPSHandoverManager;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "reqNDEF":Ljava/lang/String;
    :try_start_1a
    iget-object v4, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSetHandoverRequestMessage:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/nfc/handover/LWPSHandoverManager;->mSoftAPClassObject:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_32

    move-result v2

    .local v2, "ret":I
    goto :goto_8

    .line 86
    .end local v2    # "ret":I
    :catch_32
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LWPSHandoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, -0x1

    .restart local v2    # "ret":I
    goto :goto_8
.end method
