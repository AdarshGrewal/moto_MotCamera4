.class public final Lcom/google/android/gms/common/api/internal/zacr;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    return-void
.end method


# virtual methods
.method public final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->zaa:Lcom/google/gson/FieldAttributes;

    .line 2
    iget-object p0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/TelemetryData;

    check-cast p1, Lcom/google/android/gms/common/internal/service/zap;

    sget-object v0, Lcom/google/android/gms/common/internal/service/zao;->zae:Lcom/google/android/gms/common/api/Api;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    sget v1, Lcom/google/android/gms/internal/base/zac;->$r8$clinit:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/TelemetryData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10
    :goto_0
    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/base/zaa;->zaa:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 11
    invoke-interface {p0, v2, v0, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15
    throw p0
.end method
