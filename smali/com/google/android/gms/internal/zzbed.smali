.class public abstract Lcom/google/android/gms/internal/zzbed;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaEU:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbed;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method protected abstract zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zzqG()Lcom/google/android/gms/internal/zzbdx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdx",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbed;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdv;->zzqG()Lcom/google/android/gms/internal/zzbdx;

    move-result-object v0

    return-object v0
.end method

.method public final zzqH()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbed;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdv;->clear()V

    return-void
.end method
