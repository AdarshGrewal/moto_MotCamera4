.class public final synthetic Lcom/motorola/camera/camerax_extensions/ArcsoftHdrExtension$$ExternalSyntheticOutline1;
.super Ljava/lang/Object;


# direct methods
.method public static m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;FLcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p4, p5, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    return-void
.end method
