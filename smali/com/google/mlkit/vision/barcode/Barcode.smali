.class public Lcom/google/mlkit/vision/barcode/Barcode;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# instance fields
.field public final zza:Lcom/google/mlkit/vision/barcode/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    return-void
.end method


# virtual methods
.method public getRawValue()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/Barcode;->zza:Lcom/google/mlkit/vision/barcode/internal/zzk;

    .line 1
    invoke-interface {p0}, Lcom/google/mlkit/vision/barcode/internal/zzk;->zzn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
