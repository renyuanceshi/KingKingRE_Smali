.class Lcom/pccw/camera/ui/RotateDialogController$2;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pccw/camera/ui/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pccw/camera/ui/RotateDialogController;

.field final synthetic val$r2:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/pccw/camera/ui/RotateDialogController;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pccw/camera/ui/RotateDialogController;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/pccw/camera/ui/RotateDialogController$2;->this$0:Lcom/pccw/camera/ui/RotateDialogController;

    iput-object p2, p0, Lcom/pccw/camera/ui/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pccw/camera/ui/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/pccw/camera/ui/RotateDialogController$2;->val$r2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/pccw/camera/ui/RotateDialogController$2;->this$0:Lcom/pccw/camera/ui/RotateDialogController;

    invoke-virtual {v0}, Lcom/pccw/camera/ui/RotateDialogController;->dismissDialog()V

    .line 124
    return-void
.end method
