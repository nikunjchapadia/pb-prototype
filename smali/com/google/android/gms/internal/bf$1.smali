.class Lcom/google/android/gms/internal/bf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bf;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gj:Lcom/google/android/gms/internal/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bf$1;->gj:Lcom/google/android/gms/internal/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bf$1;->gj:Lcom/google/android/gms/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/internal/bf;->a(Lcom/google/android/gms/internal/bf;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bd;->w()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
