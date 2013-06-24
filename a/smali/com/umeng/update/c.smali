.class final Lcom/umeng/update/c;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 257
    return-void
.end method
