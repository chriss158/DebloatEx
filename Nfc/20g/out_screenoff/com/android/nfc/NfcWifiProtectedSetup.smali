.class public final Lcom/android/nfc/NfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "NfcWifiProtectedSetup.java"


# static fields
.field private static final AUTH_TYPE_EXPECTED_SIZE:S = 0x2s

.field private static final AUTH_TYPE_FIELD_ID:S = 0x1003s

.field private static final AUTH_TYPE_OPEN:S = 0x0s

.field private static final AUTH_TYPE_WPA2_EAP:S = 0x10s

.field private static final AUTH_TYPE_WPA2_PSK:S = 0x20s

.field private static final AUTH_TYPE_WPA_EAP:S = 0x8s

.field private static final AUTH_TYPE_WPA_PSK:S = 0x2s

.field private static final CREDENTIAL_FIELD_ID:S = 0x100es

.field public static final EXTRA_WIFI_CONFIG:Ljava/lang/String; = "com.android.nfc.WIFI_CONFIG_EXTRA"

.field private static final MAX_NETWORK_KEY_SIZE_BYTES:I = 0x40

.field private static final NETWORK_KEY_FIELD_ID:S = 0x1027s

.field public static final NFC_TOKEN_MIME_TYPE:Ljava/lang/String; = "application/vnd.wfa.wsc"

.field private static final SSID_FIELD_ID:S = 0x1045s


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$get$MAX_NETWORK_KEY_SIZE_BYTES()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/nfc/NfcWifiProtectedSetup;->MAX_NETWORK_KEY_SIZE_BYTES:I

    return v0
.end method

.method public static ajc$set$MAX_NETWORK_KEY_SIZE_BYTES(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/nfc/NfcWifiProtectedSetup;->MAX_NETWORK_KEY_SIZE_BYTES:I

    return-void
.end method

.method private static parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .registers 3
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->aspectOf()Lcom/android/nfc/ANfcWifiProtectedSetup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p0, v1}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse_aroundBody3$advice(Landroid/nfc/NdefMessage;Lcom/android/nfc/ANfcWifiProtectedSetup;Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static parseCredential(Ljava/nio/ByteBuffer;S)Landroid/net/wifi/WifiConfiguration;
    .registers 12
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # S

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 128
    .local v6, "startPosition":I
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 129
    .local v4, "result":Landroid/net/wifi/WifiConfiguration;
    :goto_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int v9, v6, p1

    if-lt v8, v9, :cond_1b

    .line 168
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_94

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_94

    .line 172
    .end local v4    # "result":Landroid/net/wifi/WifiConfiguration;
    :goto_1a
    return-object v4

    .line 130
    .restart local v4    # "result":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 131
    .local v1, "fieldId":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 134
    .local v2, "fieldSize":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v2

    add-int v9, v6, p1

    if-le v8, v9, :cond_2e

    move-object v4, v7

    .line 135
    goto :goto_1a

    .line 138
    :cond_2e
    sparse-switch v1, :sswitch_data_96

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_a

    .line 140
    :sswitch_3a
    new-array v5, v2, [B

    .line 141
    .local v5, "ssid":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_a

    .line 145
    .end local v5    # "ssid":[B
    :sswitch_5c
    const/16 v8, 0x40

    if-le v2, v8, :cond_62

    move-object v4, v7

    .line 146
    goto :goto_1a

    .line 148
    :cond_62
    new-array v3, v2, [B

    .line 149
    .local v3, "networkKey":[B
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a

    .line 153
    .end local v3    # "networkKey":[B
    :sswitch_84
    const/4 v8, 0x2

    if-eq v2, v8, :cond_89

    move-object v4, v7

    .line 155
    goto :goto_1a

    .line 158
    :cond_89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 159
    .local v0, "authType":S
    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v8, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->populateAllowedKeyManagement(Ljava/util/BitSet;S)V

    goto/16 :goto_a

    .end local v0    # "authType":S
    .end local v1    # "fieldId":S
    .end local v2    # "fieldSize":S
    :cond_94
    move-object v4, v7

    .line 172
    goto :goto_1a

    .line 138
    :sswitch_data_96
    .sparse-switch
        0x1003 -> :sswitch_84
        0x1027 -> :sswitch_5c
        0x1045 -> :sswitch_3a
    .end sparse-switch
.end method

.method private static final parse_aroundBody2(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .registers 12
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 100
    .local v5, "records":[Landroid/nfc/NdefRecord;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v8, :cond_a

    .line 123
    :goto_9
    return-object v6

    .line 100
    :cond_a
    aget-object v4, v5, v7

    .line 101
    .local v4, "record":Landroid/nfc/NdefRecord;
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    const-string v10, "application/vnd.wfa.wsc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 102
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 103
    .local v3, "payload":Ljava/nio/ByteBuffer;
    :goto_25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 100
    .end local v3    # "payload":Ljava/nio/ByteBuffer;
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 104
    .restart local v3    # "payload":Ljava/nio/ByteBuffer;
    :cond_2e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 105
    .local v1, "fieldId":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 106
    .local v2, "fieldSize":S
    const/16 v9, 0x100e

    if-ne v1, v9, :cond_48

    .line 110
    :try_start_3a
    invoke-static {v3, v2}, Lcom/android/nfc/NfcWifiProtectedSetup;->parseCredential(Ljava/nio/ByteBuffer;S)Landroid/net/wifi/WifiConfiguration;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3f

    move-result-object v6

    goto :goto_9

    .line 111
    :catch_3f
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "NfcWifiProtectedSetup"

    const-string v8, "parse Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25
.end method

.method private static final parse_aroundBody3$advice(Landroid/nfc/NdefMessage;Lcom/android/nfc/ANfcWifiProtectedSetup;Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;
    .registers 16

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 59
    move-object v8, p0

    .local v8, "message":Landroid/nfc/NdefMessage;
    move-object v9, p1

    .local v9, "ajc$aspectInstance":Lcom/android/nfc/ANfcWifiProtectedSetup;
    move-object v8, p2

    move-object v11, p3

    .local v11, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {v8}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse_aroundBody2(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 60
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_19

    .line 61
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    const-string v5, "around() : call(* NfcWifiProtectedSetup.parse(..) : return null"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 77
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :goto_18
    return-object v0

    .line 64
    .restart local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "around() : call(* NfcWifiProtectedSetup.parse(..) : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/android/nfc/NfcWifiProtectedSetup;->ajc$get$MAX_NETWORK_KEY_SIZE_BYTES()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_8e

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 72
    :cond_50
    :goto_50
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_9a

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v3, :cond_9a

    .line 73
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "ANfcWifiProtectedSetup.aj"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 74
    goto :goto_18

    .line 68
    :cond_8e
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_50

    .line 69
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_50

    .line 76
    :cond_9a
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v2

    const-string v3, "ANfcWifiProtectedSetup.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method private static populateAllowedKeyManagement(Ljava/util/BitSet;S)V
    .registers 4
    .param p0, "allowedKeyManagement"    # Ljava/util/BitSet;
    .param p1, "authType"    # S

    .prologue
    const/4 v1, 0x2

    .line 176
    if-eq p1, v1, :cond_7

    const/16 v0, 0x20

    if-ne p1, v0, :cond_c

    .line 177
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 183
    :cond_b
    :goto_b
    return-void

    .line 178
    :cond_c
    const/16 v0, 0x8

    if-eq p1, v0, :cond_14

    const/16 v0, 0x10

    if-ne p1, v0, :cond_18

    .line 179
    :cond_14
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    .line 180
    :cond_18
    if-nez p1, :cond_b

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_b
.end method

.method private static final startActivityAsUser_aroundBody0(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static final startActivityAsUser_aroundBody1$advice(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/nfc/ANfcWifiProtectedSetup;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 19

    .prologue
    .line 44
    move-object v5, p0

    .local v5, "target":Landroid/content/Context;
    move-object v6, p1

    .local v6, "intent":Landroid/content/Intent;
    move-object v7, p2

    .local v7, "user":Landroid/os/UserHandle;
    move-object v8, p3

    .local v8, "ajc$aspectInstance":Lcom/android/nfc/ANfcWifiProtectedSetup;
    move-object/from16 v6, p4

    move-object/from16 v10, p5

    .local v10, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v11, p6

    .local v11, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    const-string v2, "PopupDialogType"

    .line 45
    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 44
    invoke-static {v2, v3}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 45
    if-nez v2, :cond_18

    .line 46
    invoke-static {v5, v6, v10}, Lcom/android/nfc/NfcWifiProtectedSetup;->startActivityAsUser_aroundBody0(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 57
    :cond_17
    :goto_17
    return-void

    .line 49
    :cond_18
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$DBG()Z

    move-result v2

    const-string v3, "ANfcWifiProtectedSetup.aj"

    const-string v4, "around() : call(* Context.startActivityAsUser(Intent, UserHandle)"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 52
    .local v0, "currentWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Lcom/android/nfc/handover/LHandoverPopupList;

    invoke-static {v8}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mContext(Lcom/android/nfc/ANfcWifiProtectedSetup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v8}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mCallback(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList$Callback;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/android/nfc/handover/LHandoverPopupList;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/LHandoverPopupList$Callback;Landroid/os/Parcelable;)V

    invoke-static {v8, v2}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldSet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;Lcom/android/nfc/handover/LHandoverPopupList;)V

    .line 53
    invoke-static {v8}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_ANfcWifiProtectedSetup$mPopupList(Lcom/android/nfc/ANfcWifiProtectedSetup;)Lcom/android/nfc/handover/LHandoverPopupList;

    move-result-object v3

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    :goto_45
    invoke-virtual {v3, v2}, Lcom/android/nfc/handover/LHandoverPopupList;->ajc$privMethod$com_android_nfc_ANfcWifiProtectedSetup$com_android_nfc_handover_LHandoverPopupList$requestConnectWifiDeviceConfirmation(Ljava/lang/String;)Z

    move-result v1

    .line 54
    .local v1, "result":Z
    if-nez v1, :cond_17

    .line 55
    invoke-static {v5, v6, v10}, Lcom/android/nfc/NfcWifiProtectedSetup;->startActivityAsUser_aroundBody0(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_17

    .line 53
    .end local v1    # "result":Z
    :cond_4f
    const-string v2, ""

    goto :goto_45
.end method

.method public static tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z
    .registers 10
    .param p0, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->aspectOf()Lcom/android/nfc/ANfcWifiProtectedSetup;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/nfc/ANfcWifiProtectedSetup;->ajc$before$com_android_nfc_ANfcWifiProtectedSetup$1$52f58cba(Landroid/nfc/tech/Ndef;Landroid/content/Context;)V

    if-eqz p0, :cond_c

    if-nez p1, :cond_d

    .line 93
    :cond_c
    :goto_c
    return v0

    .line 68
    :cond_d
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v7

    .line 69
    .local v7, "cachedNdefMessage":Landroid/nfc/NdefMessage;
    if-eqz v7, :cond_c

    .line 75
    :try_start_13
    invoke-static {v7}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    :try_end_16
    .catch Ljava/nio/BufferUnderflowException; {:try_start_13 .. :try_end_16} :catch_4e

    move-result-object v2

    .line 81
    if-eqz v2, :cond_c

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 82
    const-string v4, "no_config_wifi"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 82
    if-nez v3, :cond_c

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    const-class v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "configureNetworkIntent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/nfc/ANfcWifiProtectedSetup;->aspectOf()Lcom/android/nfc/ANfcWifiProtectedSetup;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p1

    move-object v4, v1

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/nfc/NfcWifiProtectedSetup;->startActivityAsUser_aroundBody1$advice(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/nfc/ANfcWifiProtectedSetup;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 90
    const/4 v0, 0x1

    goto :goto_c

    .line 78
    .end local v1    # "configureNetworkIntent":Landroid/content/Intent;
    :catch_4e
    move-exception v2

    goto :goto_c
.end method
