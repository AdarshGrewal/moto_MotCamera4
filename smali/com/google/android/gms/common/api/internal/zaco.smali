.class public final Lcom/google/android/gms/common/api/internal/zaco;
.super Lcom/google/android/gms/signin/internal/zac;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zab:Landroid/content/Context;

.field public final zac:Landroid/os/Handler;

.field public final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public final zae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field public zag:Lcom/google/android/gms/signin/zae;

.field public zah:Lcom/google/android/gms/common/api/internal/zacn;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaco;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 3
    iget-object p1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zae:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 7

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 1
    check-cast p1, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "<<default account>>"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/accounts/Account;

    const-string v4, "com.google"

    .line 4
    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 8
    :goto_1
    new-instance v4, Lcom/google/android/gms/common/internal/zat;

    iget-object v5, p1, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zae:Ljava/lang/Integer;

    const-string v6, "null reference"

    .line 9
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/gms/common/internal/zat;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/internal/zaf;

    new-instance v2, Lcom/google/android/gms/signin/internal/zai;

    .line 12
    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    .line 13
    invoke-virtual {p1, v2, p0}, Lcom/google/android/gms/signin/internal/zaf;->zag(Lcom/google/android/gms/signin/internal/zai;Lcom/google/android/gms/signin/internal/zae;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "SignInClientImpl"

    const-string v3, "Remote service probably died when signIn is called"

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :try_start_2
    new-instance v3, Lcom/google/android/gms/signin/internal/zak;

    .line 16
    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 17
    invoke-direct {v3, v0, v4, v1}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzdl;

    .line 19
    invoke-direct {v1, p0, v3}, Lcom/google/android/play/core/assetpacks/zzdl;-><init>(Lcom/google/android/gms/common/api/internal/zaco;Lcom/google/android/gms/signin/internal/zak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 20
    invoke-static {v2, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zah:Lcom/google/android/gms/common/api/internal/zacn;

    .line 1
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaco;->zag:Lcom/google/android/gms/signin/zae;

    .line 1
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void
.end method
