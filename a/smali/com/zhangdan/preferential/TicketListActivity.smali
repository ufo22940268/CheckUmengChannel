.class public Lcom/zhangdan/preferential/TicketListActivity;
.super Lcom/zhangdan/preferential/BaseActivity;
.source "TicketListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/TicketListActivity$1;,
        Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;,
        Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;
    }
.end annotation


# static fields
.field public static final REQUEST_VIEW_TICKET:I


# instance fields
.field private mAdapter:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTicketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/preferential/TicketListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/TicketListActivity;)Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mAdapter:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mListView:Landroid/widget/ListView;

    .line 51
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTitleView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v0, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;-><init>(Lcom/zhangdan/preferential/TicketListActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mAdapter:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

    .line 57
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TicketListActivity;->mAdapter:Lcom/zhangdan/preferential/TicketListActivity$TicketAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0701e2

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TicketListActivity;->finish()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "instance"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f030109

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/zhangdan/preferential/TicketListActivity;->findViews()V

    .line 41
    invoke-direct {p0}, Lcom/zhangdan/preferential/TicketListActivity;->initViews()V

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TicketListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shop_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, shopId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;-><init>(Lcom/zhangdan/preferential/TicketListActivity;Lcom/zhangdan/preferential/TicketListActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/TicketListActivity$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "adpater"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_ACTION_VEW_SINGLE_TICKET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "url"

    iget-object v1, p0, Lcom/zhangdan/preferential/TicketListActivity;->mTicketList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Ticket;

    iget-object v1, v1, Lcom/zhangdan/preferential/data/model/Ticket;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/preferential/TicketListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
