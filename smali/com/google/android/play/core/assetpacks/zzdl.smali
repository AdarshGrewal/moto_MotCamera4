.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdl;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdo;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaco;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/signin/internal/zak;

    .line 2
    sget-object v1, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zak;->zab:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->zac:Lcom/google/android/gms/common/internal/zav;

    const-string v1, "null reference"

    .line 6
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "SignInCoordinator"

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zav;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabo;->zad:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabo;->zae:Ljava/util/Set;

    .line 10
    iget-boolean v3, v1, Lcom/google/android/gms/common/api/internal/zabo;->zaf:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabo;->zab:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_2

    .line 12
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_4
    :goto_2
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    .line 16
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzdo;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    .line 17
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzdo;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzdo;->zzf:Landroid/content/Context;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/play/core/assetpacks/zzbb;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 18
    :goto_3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdl;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/events/Event;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {v0, p0}, Lcom/google/firebase/events/EventHandler;->handle(Lcom/google/firebase/events/Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
