{extends file ="loggednavbar.tpl"}
{block name=content}
<div class="container">
      <form id="search-form" class="form-horizontal" onsubmit="ajaxPostForm('search-form','{$conf->action_url}bookVisit','records'); return false;">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="name"></label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                  <label for="date"><b>Wybierz dzień spotkania:</b></label>
                  <input id="date" type="date" name="date" value="date">
                </div>
                <div class="form-group">
                  <label for="spec"><b>Wybierz specjaliste:</b></label>
                  <select name="spec">
                    <option value="Jaroslaw">Jaroslaw Ogorek</option>
                    <option value="Kalina">Kalina Trautzel</option>
                    <option value="Szymon">Szymon Oleksy</option>
                  </select>
                  <div class="form-group">
                    <label for="treat"><b>Wybierz specjaliste:</b></label>
                    <select name="treat">
                      <option value="a">Borowanie zęba</option>
                      <option value="b">ligula porta</option>
                      <option value="c">euismod semper</option>
                      <option value="d">Vestibulum</option>
                      <option value="e">Wegestas eget quam</option>
                      <option value="f">Konsultacja</option>
                    </select>
                  </div>
                </div>
            </div>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row">
          <div class="col-lg-4">
            <img src="{$conf->app_url}/img/JaroslawOgórek.jpg" alt="Generic placeholder image" width="140" height="160">
            <h2>Dr.Jaroslaw Ogórek</h2>
            <p>Vestibulum id ligula portaVestibulum id ligula porta, Vestibulum id ligula portadapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <button class="btn btn-secondary buttony" type="submit">Sprawdź termin! &raquo;</button>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
              <img src="{$conf->app_url}/img/KalinaTrautzel.jpg" alt="Generic placeholder image" width="140" height="160">
              <h2>Dr.Kalina Trautzel</h2>
              <p>Wegestas eget quam. Vestibulum id ligula porta felis euismod semper dapibus ac facilisis in,Vestibulum id ligula porta egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
              <button class="btn btn-secondary buttony" type="submit">Sprawdź termin! &raquo;</button>
            </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img src="{$conf->app_url}/img/SzymonOleksy.jpg" alt="Generic placeholder image" width="140" height="160">
            <h2>Dr.Szymon Oleksy</h2>
            <p>Dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <button class="btn btn-secondary buttony"  type="submit">Sprawdź termin! &raquo; </button>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
        </form>
        <hr class="featurette-divider">
          <div class="row">
              <div class="col-md-3 field-label-responsive">
              </div>
              <div class="col-md-6">
                  <div class="form-group">
                    <div id="records">
                    {include file = "records.tpl"}
                  </div>
              </div>
        </div>
      </div>
    </div>
{/block}
