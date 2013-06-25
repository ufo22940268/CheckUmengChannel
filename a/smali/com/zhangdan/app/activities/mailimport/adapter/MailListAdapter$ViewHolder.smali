.class Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btnDelete:Landroid/widget/Button;

.field contentView:Landroid/view/View;

.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

.field tvLastAccessTime:Landroid/widget/TextView;

.field tvMailAccount:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$ViewHolder;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
