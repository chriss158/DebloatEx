.class public Lcom/android/nfc/beam/BeamTransferRecord;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/beam/BeamTransferRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static DATA_LINK_TYPE_BLUETOOTH:I


# instance fields
.field public dataLinkType:I

.field public id:I

.field public remoteActivating:Z

.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    .line 54
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord$1;

    invoke-direct {v0}, Lcom/android/nfc/beam/BeamTransferRecord$1;-><init>()V

    .line 53
    sput-object v0, Lcom/android/nfc/beam/BeamTransferRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V
    .registers 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "remoteActivating"    # Z
    .param p3, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 40
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 41
    iput-boolean p2, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    .line 42
    iput-object p3, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    .line 44
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-void
.end method

.method public static final forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 4
    .param p0, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "remoteActivating"    # Z
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 50
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_2b

    .line 95
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 97
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    .line 92
    goto :goto_10

    :cond_2e
    move v0, v1

    .line 93
    goto :goto_1a
.end method
