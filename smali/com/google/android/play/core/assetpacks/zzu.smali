.class public final Lcom/google/android/play/core/assetpacks/zzu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/play/core/assetpacks/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    .line 2
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzp;->zza:Landroid/content/Context;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    .line 2
    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzp;->zza:Landroid/content/Context;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
