.class Lcom/pccw/mobile/sip/CheckVersionActivity$2;
.super Ljava/lang/Object;
.source "CheckVersionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pccw/mobile/sip/CheckVersionActivity;->contResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pccw/mobile/sip/CheckVersionActivity;


# direct methods
.method constructor <init>(Lcom/pccw/mobile/sip/CheckVersionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pccw/mobile/sip/CheckVersionActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$2;->this$0:Lcom/pccw/mobile/sip/CheckVersionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$2;->this$0:Lcom/pccw/mobile/sip/CheckVersionActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pccw/mobile/sip/CheckVersionActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method
