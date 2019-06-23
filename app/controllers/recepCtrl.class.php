<?php
namespace app\controllers;
use core\Paginator;

class recepCtrl{
  private $paginator;
  private $pag;
  private $offset;
  private $clients;
  private $totalItems;
  private $sort;
  public function __construct(){
    $this->pag = new Paginator();
  }

  public function load_data(){
    $this->page = getFromRequest('page');
    $this->totalItems = getDB()->count("visit", "*",[
      "status" => "0"
    ]);
    $this->offset = null;
    $this->paginator = $this->pag->paginator(5, $this->totalItems, $this->page, $this->offset);
    $this->clients = getDB()->select("visit",[
      "[>]users" => ["visit.id_user" => "id_user"]
    ],
    [
        "visit.id_visit",
        "visit.id_doctor",
        "visit.dateVisit",
        "visit.treatment",
        "visit.time",
        "users.name",
        "visit.id_user"
    ], [
      "AND" =>[
      "status" => "0"
    ],
       'ORDER'     => $this->sort,
        'LIMIT'     => [ $this->offset, $this->paginator['itemsOnPage'] ]
    ]
  );
  }

  public function action_acceptVisit(){
    $id = getFromRequest('id');
    getDB()->update("visit", [
      "status" => "1",
    ],[
      "id_visit" => $id
    ]);
    $this->load_data();
    getSmarty()->assign("check", "upcoming");
    getSmarty()->assign("paginator", $this->paginator);
    getSmarty()->assign("record", $this->clients);
    getSmarty()->assign("total", $this->totalItems);
    getSmarty()->assign('page', $this->page);
    getSmarty()->assign('id', $_SESSION['id_user']);
    getSmarty()->assign("pagetitle", "Lista Klientów");
    getSmarty()->assign('res', $_SESSION['role']);
    getSmarty()->assign('active', 'showUserVisits');
    getSmarty()->assign('page_title', 'RemediumDente');
    getSmarty()->assign('page_description', 'RemediumDente');
    getSmarty()->assign('res', $_SESSION['role']);
    getSmarty()->display("recepVisits.tpl");
  }

  public function action_declineVisit(){
    $id = getFromRequest('id');
    getDB()->update("visit", [
      "status" => "2",
    ],[
      "id_visit" => $id
    ]);
    $this->load_data();
    getSmarty()->assign("check", "upcoming");
    getSmarty()->assign("paginator", $this->paginator);
    getSmarty()->assign("record", $this->clients);
    getSmarty()->assign("total", $this->totalItems);
    getSmarty()->assign('page', $this->page);
    getSmarty()->assign('id', $_SESSION['id_user']);
    getSmarty()->assign("pagetitle", "Lista Klientów");
    getSmarty()->assign('res', $_SESSION['role']);
    getSmarty()->assign('active', 'showUserVisits');
    getSmarty()->assign('page_title', 'RemediumDente');
    getSmarty()->assign('page_description', 'RemediumDente');
    getSmarty()->assign('res', $_SESSION['role']);
    getSmarty()->display("recepVisits.tpl");
  }

  public function action_upcomingVisitsRecep(){
                $this->load_data();
                getSmarty()->assign("check", "upcoming");
                getSmarty()->assign("paginator", $this->paginator);
                getSmarty()->assign("record", $this->clients);
                getSmarty()->assign("total", $this->totalItems);
                getSmarty()->assign('page', $this->page);
                getSmarty()->assign('id', $_SESSION['id_user']);
                getSmarty()->assign("pagetitle", "Lista Klientów");
                getSmarty()->assign('res', $_SESSION['role']);
                getSmarty()->assign('active', 'showUserVisits');
                getSmarty()->assign('page_title', 'RemediumDente');
                getSmarty()->assign('page_description', 'RemediumDente');
                getSmarty()->assign('res', $_SESSION['role']);
                getSmarty()->display("recepVisits.tpl");
  }
}
 ?>
