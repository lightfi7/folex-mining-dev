<?php

namespace App\Http\Controllers;

use App\Models\Ledger;
use App\Models\RefLevel;
use App\Models\Wallet;
use App\Services\EmailService;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Yajra\DataTables\DataTables;
use Auth, Session;


class RefLevelController extends Controller
{
    private $directory = "main.ref_settings.";
    private $title_singular = "Ref";
    private $title_plurar = "Ref Levels";

    public function index(Request $request)
    {
        if($request->ajax()){
            return $this->get_listing($request);
        }
        $title_plurar = $this->title_plurar;
        $directory = $this->directory;
        $active_item = "coin-settings";
        return view($this->directory . "index", compact('title_plurar', 'directory', 'active_item'));
    }

    public function get_listing()
    {
        $records = RefLevel::all();

        return DataTables::of($records)
            ->addColumn('level', function ($records) {
                return $records->level . " " . $records->last_name;
            })
            ->addColumn('ref_num', function ($records) {
                return $records->ref_num;
            })
            ->addColumn('rate', function ($records) {
                return $records->rate;
            })
            ->addColumn('action', function ($records) {
                $edit_url = url("ref-settings") . "/" . $records->id . "/edit";
                $edit = "<a href='" . $edit_url . "' class='dropdown-item'>Edit</a>";

                $delete_url = url("ref-settings/delete") . "/" . $records->id;
                $delete = "<a
                        onclick='delete_record(\"" . $delete_url . "\" )' class='dropdown-item'>Delete</a>";

                return '<div class="dropdown">
                    <a href="#" class="btn btn-dark-100 btn-icon btn-sm rounded-circle" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <svg data-name="Icons/Tabler/Notification" xmlns="http://www.w3.org/2000/svg" width="13.419" height="13.419" viewBox="0 0 13.419 13.419">
                            <rect data-name="Icons/Tabler/Dots background" width="13.419" height="13.419" fill="none"></rect>
                            <path d="M0,10.4a1.342,1.342,0,1,1,1.342,1.342A1.344,1.344,0,0,1,0,10.4Zm1.15,0a.192.192,0,1,0,.192-.192A.192.192,0,0,0,1.15,10.4ZM0,5.871A1.342,1.342,0,1,1,1.342,7.213,1.344,1.344,0,0,1,0,5.871Zm1.15,0a.192.192,0,1,0,.192-.192A.192.192,0,0,0,1.15,5.871ZM0,1.342A1.342,1.342,0,1,1,1.342,2.684,1.344,1.344,0,0,1,0,1.342Zm1.15,0a.192.192,0,1,0,.192-.192A.192.192,0,0,0,1.15,1.342Z" transform="translate(5.368 0.839)" fill="#6c757d"></path>
                    </svg>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end" style="margin: 0px;">
                                ' . $edit . $delete. '
                        </div>
                    </div>';

            })
            ->rawColumns(['action'])
            ->make(true);
    }

    public function create() {
        $form_button = "Create";
        $directory = $this->directory;
        $title_singular = $this->title_singular;
        $active_item = "coin-settings";
        $levels = RefLevel::all();

        return view($this->directory . "create", compact('form_button', 'title_singular', 'directory', 'active_item', 'levels'));
    }

    public function store(Request $request) {
        $this->validate($request, [
            'level' => 'required',
            'ref_num' => 'required',
            'rate' => 'required'
        ]);

        $record = new RefLevel();

        $record->level = $request->level;
        $record->ref_num = $request->ref_num;
        $record->rate = $request->rate;
        $record->save();

        Session::flash('success', 'Created successfully');
        return 1;
    }

    public function edit($id) {
        $form_button = "Update";
        $directory = $this->directory;
        $title_singular = $this->title_singular;

        $record = RefLevel::where("id", $id)
            ->first();

        if (!$record)
            return redirect("ref-settings");

        $active_item = "coin-settings";
        $levels = RefLevel::all();

        return view($this->directory . "edit", compact('form_button', 'title_singular', 'directory', 'record', 'active_item', 'levels'));
    }

    public function update(Request $request, $id) {
        $this->validate($request, [
            'level' => 'required',
            'ref_num' => 'required',
            'rate' => 'required'
        ]);


        $record = RefLevel::where('id', $id)->first();
        if (!$record)
            return [array("error" => "Level not found. Please refresh and try again")];
        $record->level = $request->level;
        $record->ref_num = $request->ref_num;
        $record->rate = $request->rate;
        $record->save();

        return [array("success" => "Updated Successfully")];
    }

    public function destroy($id) {
        $record = RefLevel::where('id', $id)->first();

        $record->delete();

        return redirect()->back()->with("success", "Deleted Successfully");
    }
}
