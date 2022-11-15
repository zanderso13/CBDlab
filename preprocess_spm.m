% List of open inputs
analysis_dir = '/Users/zaz3744/Documents/current_projects/CBDlab/sub-50001/ses-1';

nrun = 1; % enter the number of runs here
jobfile = {'/Users/zaz3744/Documents/GitHub/CBHDlab/preprocess_spm_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(1, nrun);
inputs{1} = filenames(fullfile(analysis_dir,'/func/*bold.nii'));
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
