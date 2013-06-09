.class public final Lcom/zhangdan/app/activities/chart/s;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/zhangdan/app/activities/chart/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/s;)Lcom/zhangdan/app/activities/chart/u;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/s;->b:Lcom/zhangdan/app/activities/chart/u;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/activities/chart/u;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/s;->b:Lcom/zhangdan/app/activities/chart/u;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "names"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/s;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const v1, 0x7f08019b

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/chart/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/chart/t;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/app/activities/chart/t;-><init>(Lcom/zhangdan/app/activities/chart/s;[Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method
