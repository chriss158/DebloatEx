.class Lcom/android/nfc/beam/BeamTransferRecord$1;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamTransferRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/beam/BeamTransferRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "deviceType":I
    sget v6, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v6, :cond_b

    .line 72
    :goto_a
    return-object v5

    .line 63
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 64
    .local v3, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_34

    .line 65
    .local v2, "remoteActivating":Z
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "numUris":I
    const/4 v4, 0x0

    .line 67
    .local v4, "uris":[Landroid/net/Uri;
    if-lez v1, :cond_2d

    .line 68
    new-array v4, v1, [Landroid/net/Uri;

    .line 69
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 72
    :cond_2d
    new-instance v6, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v6, v3, v2, v4, v5}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V

    move-object v5, v6

    goto :goto_a

    .line 64
    .end local v1    # "numUris":I
    .end local v2    # "remoteActivating":Z
    .end local v4    # "uris":[Landroid/net/Uri;
    :cond_34
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 79
    new-array v0, p1, [Lcom/android/nfc/beam/BeamTransferRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method
