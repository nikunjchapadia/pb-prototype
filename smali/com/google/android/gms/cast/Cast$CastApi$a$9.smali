.class Lcom/google/android/gms/cast/Cast$CastApi$a$9;
.super Lcom/google/android/gms/cast/Cast$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/Cast$CastApi$a;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ko:Lcom/google/android/gms/cast/Cast$CastApi$a;

.field final synthetic kr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->ko:Lcom/google/android/gms/cast/Cast$CastApi$a;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->kr:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/Cast$b;-><init>(Lcom/google/android/gms/cast/Cast$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/dg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->a(Lcom/google/android/gms/internal/dg;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dg;)V
    .locals 2

    const/16 v1, 0x7d1

    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->kr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IllegalArgument: sessionId cannot be null or empty"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->c(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->kr:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/dg;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->r(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;->r(I)V

    goto :goto_0
.end method
